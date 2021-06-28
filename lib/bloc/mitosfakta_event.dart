part of 'mitosfakta_bloc.dart';

abstract class MitosFaktaEvent extends Equatable {
  const MitosFaktaEvent();

  @override
  List<Object> get props => [];
}

class MitosFaktaLoaded extends MitosFaktaEvent {
  MitosFaktaLoaded();
}
