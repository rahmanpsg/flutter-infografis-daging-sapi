import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:infografis_daging_sapi/models/daging_models.dart';
import 'package:infografis_daging_sapi/models/errorHandling_models.dart';
import 'package:infografis_daging_sapi/models/infografis_models.dart';
import 'package:infografis_daging_sapi/services/infografis_service.dart';

part 'infografis_event.dart';
part 'infografis_state.dart';

class InfografisBloc extends Bloc<InfografisEvent, InfografisState> {
  InfografisBloc() : super(InfografisState());

  @override
  Stream<InfografisState> mapEventToState(
    InfografisEvent event,
  ) async* {
    print(event);
    if (event is InfografisLoaded) {
      yield* _mapLoadDataList(event, state);
    } else if (event is SelectedChange) {
      yield _mapChangeSelected(event, state);
    } else if (event is FilterDagingList) {
      yield _mapFilterDaging(event, state);
    }
  }
}

Stream<InfografisState> _mapLoadDataList(
  InfografisLoaded event,
  InfografisState state,
) async* {
  InfografisService infografisService = InfografisService();

  try {
    yield state.copyWith(isLoading: true);

    final responseInfografis = await infografisService.fetchInfografis();
    final responseDaging = await infografisService.fetchDaging();

    final List<InfografisModel> infografisList = List.generate(
      (responseInfografis.data as List).length,
      (i) => InfografisModel.fromJson(responseInfografis.data[i]),
    );

    final List<DagingModel> dagingList = List.generate(
        (responseDaging.data as List).length,
        (i) => DagingModel.fromJson(responseDaging.data[i]));

    yield state.copyWith(
      infografisList: infografisList,
      dagingList: dagingList,
      dagingListFilter: dagingList,
      isDataLoaded: true,
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

InfografisState _mapChangeSelected(
  SelectedChange event,
  InfografisState state,
) {
  final int selectedList = event.selected;
  print(selectedList);
  return state.copyWith(selectedList: selectedList, isDataLoaded: false);
}

InfografisState _mapFilterDaging(
  FilterDagingList event,
  InfografisState state,
) {
  final List<DagingModel> dagingList = event.dagingList;
  final int idInfografis = event.idInfografis;

  final List<DagingModel> dagingListFilter = [];

  dagingList.forEach((DagingModel list) =>
      {if (list.idInfografis == idInfografis) dagingListFilter.add(list)});

  return state.copyWith(
    dagingList: dagingList,
    dagingListFilter: dagingListFilter,
  );
}
