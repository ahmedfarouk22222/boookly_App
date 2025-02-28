import 'package:bookly_app/Features/Home/busines_logic/cubits/similar_books_cubits/cubit/similarbooks_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/custom_book_image.dart';
import 'package:bookly_app/core/widgets/custome_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListview extends StatelessWidget {
  const SimilarBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
      builder: (context, state) {
        if (state is SimilarbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.20,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomBookImage(
                    urlImage: 'assets/images/th.jpeg',
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarbooksFailure) {
          return CustomeError(errorMessage: state.errorMessage);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}
