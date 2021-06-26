import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:infografis_daging_sapi/models/errorHandling_models.dart';
import 'package:infografis_daging_sapi/models/resep_models.dart';
import 'package:infografis_daging_sapi/services/resep_service.dart';

part 'resep_event.dart';
part 'resep_state.dart';

class ResepBloc extends Bloc<ResepEvent, ResepState> {
  ResepBloc() : super(ResepState());

  @override
  Stream<ResepState> mapEventToState(
    ResepEvent event,
  ) async* {
    print(event);
    if (event is ResepLoaded) {
      yield* _mapLoadDataList(event, state);
    } else if (event is SelectedResepChange) {
      yield _mapChangeSelected(event, state);
    }
  }
}

Stream<ResepState> _mapLoadDataList(
  ResepLoaded event,
  ResepState state,
) async* {
  ResepService resepService = ResepService();

  try {
    yield state.copyWith(
      isLoading: true,
      idInfografis: event.idInfografis,
    );

    final response = await resepService.fetchByIdInfografis(event.idInfografis);

    final List<ResepModel> resepList = List.generate(
      (response.data as List).length,
      (i) => ResepModel.fromJson(response.data[i]),
    );

    yield* Stream.periodic(
        const Duration(seconds: 1),
        (_) => state.copyWith(
              resepList: resepList,
              idInfografis: event.idInfografis,
            ));
  } catch (e) {
    yield state.copyWith(
      error: ErrorHandlingModel(
        status: false,
        value: "Tidak dapat terhubung ke server",
      ),
    );
  }
}

ResepState _mapChangeSelected(
  SelectedResepChange event,
  ResepState state,
) {
  final int selectedList = event.selected;
  return state.copyWith(selectedList: selectedList);
}
