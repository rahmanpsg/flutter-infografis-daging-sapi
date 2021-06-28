part of 'olahan_bloc.dart';

class OlahanState extends Equatable {
  OlahanState({
    this.olahanList = const <OlahanModel>[],
    this.olahanListFilter = const <OlahanModel>[],
    this.selectedList = -1,
    this.selectedMetode = "",
    this.isLoading = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<OlahanModel> olahanList;
  final List<OlahanModel> olahanListFilter;
  final int selectedList;
  final String selectedMetode;
  final bool isLoading;
  final ErrorHandlingModel error;

  OlahanState copyWith({
    List<OlahanModel>? olahanList,
    List<OlahanModel>? olahanListFilter,
    int? selectedList,
    String? selectedMetode,
    bool? isLoading,
    ErrorHandlingModel? error,
  }) {
    return OlahanState(
      olahanList: olahanList ?? this.olahanList,
      olahanListFilter: olahanListFilter ?? this.olahanListFilter,
      selectedList: selectedList ?? this.selectedList,
      selectedMetode: selectedMetode ?? this.selectedMetode,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        olahanList,
        olahanListFilter,
        selectedList,
        selectedMetode,
        isLoading,
        error,
      ];
}
