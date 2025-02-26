import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/data/repository/home_repository.dart';
import 'package:meta/meta.dart';

part 'newstbooks_state.dart';

class NewstbooksCubit extends Cubit<NewstbooksState> {
  NewstbooksCubit(this.homeRepository) : super(NewstbooksInitial());
  final HomeRepository homeRepository;
  Future getNewBooks(String filter, String query, String orderBy, int maxResults) async {
    emit(NewstbooksLoading());
    try {
      final newstbooks = await homeRepository.getNewBooks(filter, query, orderBy, maxResults);
      newstbooks.fold(
        (failure) {
          emit(NewstbooksFailure(failure.toString()));
        },
        (newstbooks) {
          emit(NewstbooksSuccess(newstbooks));
        },
      );
    } catch (e) {
      emit(NewstbooksFailure(e.toString()));
    }
  }
}
