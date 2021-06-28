part of 'mitosfakta_bloc.dart';

class MitosFaktaState extends Equatable {
  MitosFaktaState({
    this.mitosFaktaList = const <MitosFaktaModel>[],
    this.isLoading = false,
    this.error = const ErrorHandlingModel(status: true, value: ""),
  });

  final List<MitosFaktaModel> mitosFaktaList;
  final bool isLoading;
  final ErrorHandlingModel error;

  MitosFaktaState copyWith({
    List<MitosFaktaModel>? mitosFaktaList,
    bool? isLoading,
    ErrorHandlingModel? error,
  }) {
    return MitosFaktaState(
      mitosFaktaList: mitosFaktaList ?? this.mitosFaktaList,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }

  @override
  List<Object> get props => [
        mitosFaktaList,
        isLoading,
        error,
      ];
}
