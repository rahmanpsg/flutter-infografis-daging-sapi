import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:infografis_daging_sapi/models/errorHandling_models.dart';
import 'package:infografis_daging_sapi/models/olahan_models.dart';
import 'package:infografis_daging_sapi/services/resep_service.dart';

part 'olahan_event.dart';
part 'olahan_state.dart';

class OlahanBloc extends Bloc<OlahanEvent, OlahanState> {
  OlahanBloc() : super(OlahanState());

  @override
  Stream<OlahanState> mapEventToState(
    OlahanEvent event,
  ) async* {
    print(event);
    if (event is OlahanLoaded) {
      yield* _mapLoadDataList(event, state);
    } else if (event is SelectedOlahanChange) {
      yield _mapChangeSelected(event, state);
    } else if (event is FilterBySearch) {
      yield _mapFilterBySearch(event, state);
    }
  }
}

Stream<OlahanState> _mapLoadDataList(
  OlahanLoaded event,
  OlahanState state,
) async* {
  ResepService resepService = ResepService();

  try {
    yield state.copyWith(
      isLoading: true,
    );

    final response = await resepService.fetchAllData();

    final List<OlahanModel> olahanList = List.generate(
      (response.data as List).length,
      (i) => OlahanModel.fromJson(response.data[i]),
    );

    yield* Stream.periodic(
        const Duration(seconds: 1),
        (_) => state.copyWith(
              olahanList: olahanList,
              olahanListFilter: olahanList,
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

OlahanState _mapChangeSelected(
  SelectedOlahanChange event,
  OlahanState state,
) {
  final int selectedList = event.selected;
  return state.copyWith(selectedList: selectedList);
}

OlahanState _mapFilterBySearch(
  FilterBySearch event,
  OlahanState state,
) {
  final List<OlahanModel> olahanList = event.olahanList;
  final String query = event.query;
  final String language = event.language;

  final List<OlahanModel> olahanListFilter = [];

  olahanList.forEach((OlahanModel list) => {
        if (list.nama[language].toString().contains(query))
          olahanListFilter.add(list)
      });

  return state.copyWith(
    olahanListFilter: olahanListFilter,
    olahanList: olahanListFilter,
  );
}
