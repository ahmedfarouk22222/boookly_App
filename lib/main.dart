import 'package:bookly_app/Features/Home/busines_logic/cubits/fetured_books_cubit/cubit/feturedbooks_cubit.dart';
import 'package:bookly_app/Features/Home/busines_logic/cubits/newsbookCubit/cubit/newstbooks_cubit.dart';
import 'package:bookly_app/core/constans/constans.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  initGetIt();
  return runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<FeturedbooksCubit>()),
         BlocProvider(create: (context) => getIt<NewstbooksCubit>()),

      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimary,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
