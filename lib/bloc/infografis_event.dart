part of 'infografis_bloc.dart';

abstract class InfografisEvent extends Equatable {
  const InfografisEvent();

  @override
  List<Object> get props => [];
}

class Selected extends InfografisEvent {
  Selected(this.value);
  final int value;
}
