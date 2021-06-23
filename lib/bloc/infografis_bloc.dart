import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
    if (event is InfografisLoaded) {
      yield* _mapLoadDataList(event, state);
    } else if (event is SelectedChange) {
      yield _mapChangeSelected(event, state);
    }
  }
}

Stream<InfografisState> _mapLoadDataList(
    InfografisLoaded event, InfografisState state) async* {
  InfografisService infografisService = InfografisService();

  try {
    final response = await infografisService.fetchInfografis();

    final List<InfografisModel> infografisList = List.generate(
      (response.data as List).length,
      (i) => InfografisModel.fromJson(response.data[i]),
    );

    yield state.copyWith(infografisList: infografisList);
  } catch (e) {
    yield state.copyWith(infografisList: []);
  }
}

InfografisState _mapChangeSelected(
    SelectedChange event, InfografisState state) {
  final int selectedList = event.selected;
  return state.copyWith(selectedList: selectedList);
}
