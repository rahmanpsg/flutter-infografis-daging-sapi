import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'infografis_event.dart';
part 'infografis_state.dart';

class InfografisBloc extends Bloc<InfografisEvent, InfografisState> {
  InfografisBloc() : super(InfografisInitial());

  @override
  Stream<InfografisState> mapEventToState(
    InfografisEvent event,
  ) async* {
    if (event is Selected) {
      if (state is InfografisInitial) {
        final int value = event.value;
        yield SelectedDaging(value);
      } else if (state is SelectedDaging) {
        final int value = event.value;

        yield (state as SelectedDaging).copyWith(value);
        print(value);
      }
    }
  }
}
