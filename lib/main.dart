import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/features/home/presentation/logic/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/logic/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/bloc_observer/simple_bloc_observer.dart';
import 'core/di/dependency_injection.dart' as di;

void main() {
  di.initGetIt();
  Bloc.observer = SimpleBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.getIt<FeaturedBooksCubit>()),
        BlocProvider(create: (context) => di.getIt<NewestBooksCubit>()),
      ],
      child: SafeArea(
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            scaffoldBackgroundColor: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
