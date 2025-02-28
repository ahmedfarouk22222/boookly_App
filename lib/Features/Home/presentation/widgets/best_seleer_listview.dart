import 'package:bookly_app/Features/Home/busines_logic/cubits/newsbookCubit/cubit/newstbooks_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/books_item.dart';
import 'package:bookly_app/core/widgets/custome_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSeleerListview extends StatelessWidget {
  const BestSeleerListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewstbooksCubit, NewstbooksState>(
      builder: (context, state) {
        if (state is NewstbooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.newstbooks.items?.length ?? 0,
            itemBuilder: (context, index) {
              final book = state.newstbooks;

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerItem(
                  bookModel: book,
                  index: index,
                  
                ),
              );
            },
          );
        } else if (state is NewstbooksFailure) {
          return CustomeError(errorMessage: state.errormessage);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
