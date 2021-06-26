part of 'infografis_bloc.dart';

class InfografisState extends Equatable {
  InfografisState({
    this.infografisList = const <InfografisModel>[],
    this.selectedList = -1,
    this.isLoading = false,
    this.isDataLoaded = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<InfografisModel> infografisList;
  final int selectedList;
  final bool isLoading;
  final bool isDataLoaded;
  final ErrorHandlingModel error;

  InfografisState copyWith(
      {List<InfografisModel>? infografisList,
      int? selectedList,
      bool? isLoading,
      bool? isDataLoaded,
      ErrorHandlingModel? error}) {
    return InfografisState(
      infografisList: infografisList ?? this.infografisList,
      selectedList: selectedList ?? this.selectedList,
      isLoading: isLoading ?? this.isLoading,
      isDataLoaded: isDataLoaded ?? this.isDataLoaded,
      error: error ?? this.error,
    );
  }

  @override
  String toString() {
    return '''InfografisState { infografisList: $infografisList, selectedList: $selectedList, isLoading: $isLoading }''';
  }

  @override
  List<Object> get props =>
      [infografisList, selectedList, isLoading, isDataLoaded, error];
}
