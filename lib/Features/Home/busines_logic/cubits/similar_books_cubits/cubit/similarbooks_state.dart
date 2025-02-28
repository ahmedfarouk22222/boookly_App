part of 'similarbooks_cubit.dart';

@immutable
sealed class SimilarbooksState {}

final class SimilarbooksInitial extends SimilarbooksState {}

final class SimilarbooksLoading extends SimilarbooksState {}

final class SimilarbooksSuccess extends SimilarbooksState {
final  BookModel similarsBooks;

  SimilarbooksSuccess({required this.similarsBooks});
}

final class SimilarbooksFailure extends SimilarbooksState {
  final String errorMessage;

  SimilarbooksFailure({required this.errorMessage});
}
