import 'package:bookly_app/Features/Home/busines_logic/cubits/fetured_books_cubit/cubit/feturedbooks_cubit.dart';
import 'package:bookly_app/Features/Home/busines_logic/cubits/newsbookCubit/cubit/newstbooks_cubit.dart';
import 'package:bookly_app/Features/Home/presentation/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<FeturedbooksCubit>().getFeturedBooks(' programming');
    context
        .read<NewstbooksCubit>()
        .getNewBooks('free-ebooks', 'programming', 'newest', 40);
         context
        .read<NewstbooksCubit>()
        .getNewBooks('free-ebooks', 'programming', 'newest', 40);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeViewBody(),
    );
  }
}
