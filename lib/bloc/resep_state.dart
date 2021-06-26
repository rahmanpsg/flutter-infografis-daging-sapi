part of 'resep_bloc.dart';

class ResepState extends Equatable {
  ResepState({
    this.resepList = const <ResepModel>[],
    this.idInfografis = -1,
    this.selectedList = -1,
    this.isLoading = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<ResepModel> resepList;
  final int idInfografis;
  final int selectedList;
  final bool isLoading;
  final ErrorHandlingModel error;

  ResepState copyWith(
      {List<ResepModel>? resepList,
      int? idInfografis,
      int? selectedList,
      bool? isLoading,
      ErrorHandlingModel? error}) {
    return ResepState(
      resepList: resepList ?? this.resepList,
      idInfografis: idInfografis ?? this.idInfografis,
      selectedList: selectedList ?? this.selectedList,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props =>
      [resepList, idInfografis, selectedList, isLoading, error];
}
