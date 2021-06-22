part of 'infografis_bloc.dart';

abstract class InfografisState extends Equatable {
  const InfografisState();

  @override
  List<Object> get props => [];
}

class InfografisInitial extends InfografisState {}

class SelectedDaging extends InfografisState {
  final int value;

  SelectedDaging(this.value);

  SelectedDaging copyWith(value) {
    return SelectedDaging(value);
  }

  @override
  List<Object> get props => [value];
}
