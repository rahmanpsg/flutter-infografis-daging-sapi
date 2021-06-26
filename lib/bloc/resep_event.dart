part of 'resep_bloc.dart';

abstract class ResepEvent extends Equatable {
  const ResepEvent();

  @override
  List<Object> get props => [];
}

class ResepLoaded extends ResepEvent {
  ResepLoaded(this.idInfografis);
  final int idInfografis;
}

class SelectedResepChange extends ResepEvent {
  SelectedResepChange(this.selected);
  final int selected;
}
