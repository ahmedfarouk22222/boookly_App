import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:meta/meta.dart';

part 'newstbooks_state.dart';

class NewstbooksCubit extends Cubit<NewstbooksState> {
  NewstbooksCubit() : super(NewstbooksInitial());
}
