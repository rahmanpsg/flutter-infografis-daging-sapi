part of 'infografis_bloc.dart';

abstract class InfografisEvent extends Equatable {
  const InfografisEvent();

  @override
  List<Object> get props => [];
}

class InfografisLoaded extends InfografisEvent {
  InfografisLoaded();
}

class SelectedChange extends InfografisEvent {
  SelectedChange(this.selected);
  final int selected;
}

class FilterDagingList extends InfografisEvent {
  FilterDagingList(this.dagingList, this.idInfografis);
  final List<DagingModel> dagingList;
  final int idInfografis;
}
