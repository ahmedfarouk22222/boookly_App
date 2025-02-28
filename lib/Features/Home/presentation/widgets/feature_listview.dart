import 'package:bookly_app/Features/Home/busines_logic/cubits/fetured_books_cubit/cubit/feturedbooks_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custome_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class Featurelistviewitem extends StatelessWidget {
  const Featurelistviewitem({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocBuilder<FeturedbooksCubit, FeturedbooksState>(
      bloc: GetIt.I<FeturedbooksCubit>(), // استخدام get_it بدلاً من BlocProvider
      builder: (context, state) {
        if (state is FeturedbooksSuccess) {
          return SizedBox(
            height: screenHeight * 0.2,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:state.books.items?.length??0,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                 final book = state.books.items?[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(urlImage: book?.volumeInfo?.imageLinks?.thumbnail ?? 'assets/images/th.jpeg'),

                );
              },
            ),
          );
        } else if (state is FeturedbooksFailure) {
          return CustomeError(errorMessage: state.errormessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
