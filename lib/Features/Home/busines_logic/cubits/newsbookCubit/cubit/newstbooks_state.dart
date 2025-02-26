part of 'newstbooks_cubit.dart';

@immutable
sealed class NewstbooksState {}

final class NewstbooksInitial extends NewstbooksState {}
final class NewstbooksLoading extends NewstbooksState {}
final class NewstbooksSuccess extends NewstbooksState {
  final BookModel newstbooks;

  NewstbooksSuccess(this.newstbooks);
}
final class NewstbooksFailure extends NewstbooksState {
  final String errormessage;

  NewstbooksFailure(this.errormessage);
}
