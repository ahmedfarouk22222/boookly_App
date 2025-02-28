import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/data/repository/home_repository.dart';
import 'package:meta/meta.dart';

part 'similarbooks_state.dart';

class SimilarbooksCubit extends Cubit<SimilarbooksState> {
  SimilarbooksCubit(this.homeRepository) : super(SimilarbooksInitial());
  final HomeRepository homeRepository;
  Future getNewBooks(
      String filter, String query, String orderBy, int maxResults) async {
    emit(SimilarbooksLoading());
    try {
      final newstbooks =
          await homeRepository.getNewBooks(filter, query, orderBy, maxResults);
      newstbooks.fold(
        (failure) {
          emit(SimilarbooksFailure(errorMessage: failure.toString()));
        },
        (newstbooks) {
          emit(SimilarbooksSuccess(similarsBooks: newstbooks));
        },
      );
    } catch (e) {
      emit(SimilarbooksFailure(errorMessage: e.toString()));
    }
  }
}
