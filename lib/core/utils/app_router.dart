import 'package:bookly/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/Features/home/presentaion/views/home_view.dart';
import 'package:bookly/Features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const khomeView = '/homeView';
  static const kbookDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: khomeView,
        builder: (context, state) => const HomeView(),
      ),
       GoRoute(
        path: kbookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
