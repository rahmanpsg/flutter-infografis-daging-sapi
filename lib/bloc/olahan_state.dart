part of 'olahan_bloc.dart';

class OlahanState extends Equatable {
  OlahanState({
    this.olahanList = const <OlahanModel>[],
    this.olahanListFilter = const <OlahanModel>[],
    this.selectedList = -1,
    this.isLoading = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<OlahanModel> olahanList;
  final List<OlahanModel> olahanListFilter;
  final int selectedList;
  final bool isLoading;
  final ErrorHandlingModel error;

  OlahanState copyWith({
    List<OlahanModel>? olahanList,
    List<OlahanModel>? olahanListFilter,
    int? selectedList,
    bool? isLoading,
    ErrorHandlingModel? error,
  }) {
    return OlahanState(
      olahanList: olahanList ?? this.olahanList,
      olahanListFilter: olahanListFilter ?? this.olahanListFilter,
      selectedList: selectedList ?? this.selectedList,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props =>
      [olahanList, olahanListFilter, selectedList, isLoading, error];
}
