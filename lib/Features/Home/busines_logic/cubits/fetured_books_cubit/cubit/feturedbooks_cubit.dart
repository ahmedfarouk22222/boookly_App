import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:bookly_app/Features/Home/data/repository/home_repository.dart';
import 'package:meta/meta.dart';

part 'feturedbooks_state.dart';

class FeturedbooksCubit extends Cubit<FeturedbooksState> {
  FeturedbooksCubit(this.homeRepository) : super(FeturedbooksInitial());

  final HomeRepository homeRepository;

  Future<void> getFeturedBooks(String query) async {
    emit(FeturedbooksLoading());
    try {
      final books = await homeRepository.getallBooks(query);
      books.fold(
        (failure) {
          emit(FeturedbooksFailure(failure.toString()));
        },
        (books) {
          emit(FeturedbooksSuccess(books));
        },
      );
    } catch (e) {
      emit(FeturedbooksFailure(e.toString()));
    }
  }
}
