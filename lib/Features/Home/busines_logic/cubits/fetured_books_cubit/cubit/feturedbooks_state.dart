part of 'feturedbooks_cubit.dart';

@immutable
sealed class FeturedbooksState {}

final class FeturedbooksInitial extends FeturedbooksState {}

final class FeturedbooksLoading extends FeturedbooksState {}

final class FeturedbooksSuccess extends FeturedbooksState {
  final BookModel books;

  FeturedbooksSuccess(this.books);
}

final class FeturedbooksFailure extends FeturedbooksState {
  final String errormessage;

  FeturedbooksFailure(this.errormessage);
}
