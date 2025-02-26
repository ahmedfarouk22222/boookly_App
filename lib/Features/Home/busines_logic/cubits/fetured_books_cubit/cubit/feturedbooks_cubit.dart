import 'package:bloc/bloc.dart';
import 'package:bookly_app/Features/Home/data/models/book_model.dart';
import 'package:meta/meta.dart';

part 'feturedbooks_state.dart';

class FeturedbooksCubit extends Cubit<FeturedbooksState> {
  FeturedbooksCubit() : super(FeturedbooksInitial());
}
