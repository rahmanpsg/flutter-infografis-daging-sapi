import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:infografis_daging_sapi/models/errorHandling_models.dart';
import 'package:infografis_daging_sapi/models/mitosFakta_models.dart';
import 'package:infografis_daging_sapi/services/mitosFakta_service.dart';

part 'mitosfakta_event.dart';
part 'mitosfakta_state.dart';

class MitosFaktaBloc extends Bloc<MitosFaktaEvent, MitosFaktaState> {
  MitosFaktaBloc() : super(MitosFaktaState());

  @override
  Stream<MitosFaktaState> mapEventToState(
    MitosFaktaEvent event,
  ) async* {
    print(event);
    if (event is MitosFaktaLoaded) {
      yield* _mapLoadDataList(event, state);
    }
  }
}

Stream<MitosFaktaState> _mapLoadDataList(
  MitosFaktaLoaded event,
  MitosFaktaState state,
) async* {
  MitosFaktaService mitosFaktaService = MitosFaktaService();

  try {
    yield state.copyWith(isLoading: true);

    final response = await mitosFaktaService.fetchInfografis();

    final List<MitosFaktaModel> mitosFaktaList = List.generate(
      (response.data as List).length,
      (i) => MitosFaktaModel.fromJson(response.data[i]),
    );

    yield state.copyWith(
      mitosFaktaList: mitosFaktaList,
      error: ErrorHandlingModel(
        status: true,
        value: "",
      ),
    );
  } catch (e) {
    yield state.copyWith(
      isLoading: false,
      error: ErrorHandlingModel(
        status: false,
        value: "Tidak dapat terhubung ke server",
      ),
    );
  }
}
