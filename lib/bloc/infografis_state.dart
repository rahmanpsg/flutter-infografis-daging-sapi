part of 'infografis_bloc.dart';

class InfografisState extends Equatable {
  InfografisState({
    this.infografisList = const <InfografisModel>[],
    this.dagingList = const <DagingModel>[],
    this.dagingListFilter = const <DagingModel>[],
    this.selectedList = -1,
    this.isLoading = false,
    this.isDataLoaded = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<InfografisModel> infografisList;
  final List<DagingModel> dagingList;
  final List<DagingModel> dagingListFilter;
  final int selectedList;
  final bool isLoading;
  final bool isDataLoaded;
  final ErrorHandlingModel error;

  InfografisState copyWith({
    List<InfografisModel>? infografisList,
    List<DagingModel>? dagingList,
    List<DagingModel>? dagingListFilter,
    int? selectedList,
    bool? isLoading,
    bool? isDataLoaded,
    ErrorHandlingModel? error,
  }) {
    return InfografisState(
      infografisList: infografisList ?? this.infografisList,
      dagingList: dagingList ?? this.dagingList,
      dagingListFilter: dagingListFilter ?? this.dagingListFilter,
      selectedList: selectedList ?? this.selectedList,
      isLoading: isLoading ?? this.isLoading,
      isDataLoaded: isDataLoaded ?? this.isDataLoaded,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        infografisList,
        dagingList,
        dagingListFilter,
        selectedList,
        isLoading,
        isDataLoaded,
        error,
      ];
}
