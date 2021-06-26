part of 'olahan_bloc.dart';

abstract class OlahanEvent extends Equatable {
  const OlahanEvent();

  @override
  List<Object> get props => [];
}

class OlahanLoaded extends OlahanEvent {
  OlahanLoaded();
}

class SelectedOlahanChange extends OlahanEvent {
  SelectedOlahanChange(this.selected);
  final int selected;
}

class FilterBySearch extends OlahanEvent {
  FilterBySearch({
    required this.olahanList,
    required this.query,
    required this.language,
  });
  final List<OlahanModel> olahanList;
  final String query;
  final String language;
}
