import 'package:e_commerce/feature/Auth/presentation/views/auth_view.dart';
import 'package:e_commerce/feature/home/presentation/views/home_view.dart';
import 'package:e_commerce/feature/splach/presentation/views/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';

  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplachView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(path: kLoginView, builder: (context, state) => const AuthView()),
    ],
  );
}
