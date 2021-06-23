part of 'infografis_bloc.dart';

class InfografisState extends Equatable {
  const InfografisState({
    this.infografisList = const <InfografisModel>[],
    this.selectedList = -1,
  });

  final List<InfografisModel> infografisList;
  final int selectedList;

  InfografisState copyWith(
      {List<InfografisModel>? infografisList, int? selectedList}) {
    return InfografisState(
      infografisList: infografisList ?? this.infografisList,
      selectedList: selectedList ?? this.selectedList,
    );
  }

  @override
  String toString() {
    return '''PostState { infografisList: $infografisList, selectedList: $selectedList }''';
  }

  @override
  List<Object> get props => [infografisList, selectedList];
}
