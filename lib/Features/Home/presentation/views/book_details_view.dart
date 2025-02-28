import 'package:bookly_app/Features/Home/busines_logic/cubits/similar_books_cubits/cubit/similarbooks_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key});

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
   
    super.initState();
    context.read<SimilarbooksCubit>()
        .getNewBooks('free-ebooks', 'programming', 're', 40);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsBody()),
    );
  }
}
