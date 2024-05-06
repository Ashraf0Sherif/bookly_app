import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/logic/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/repos/home_repo_implementation.dart';
import 'package:bookly_app/features/search/presentation/logic/searched_books_cubit/searched_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/search/repos/search_repo_implementaion.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = "/homeView";
  static const kBookDetails = "/bookDetails";
  static const kSearchView = "/searchView";
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kBookDetails,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
            child: BookDetailsView(
              book: state.extra as Book,
            ),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                SearchedBooksCubit(getIt.get<SearchRepoImplementation>()),
            child: const SearchView(),
          );
        },
      ),
    ],
  );
}
