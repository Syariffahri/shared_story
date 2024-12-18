import 'package:go_router/go_router.dart';
import 'package:shared_story/presentation/screens/add_story_screen.dart';
import 'package:shared_story/presentation/screens/detail_story_screen.dart';
import 'package:shared_story/presentation/screens/home_screen.dart';
import 'package:shared_story/presentation/screens/login_screen.dart';
import 'package:shared_story/presentation/screens/register_screen.dart';

import '../../data/models/story_model.dart';

class AppRoutes {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'story-detail',
            builder: (context, state) {
              final story = state.extra as Story;
              return DetailStoryScreen(story: story);
            },
          ),
          GoRoute(
            path: 'add-story',
            builder: (context, state) => const AddStoryScreen(),
          ),
        ],
      ),
    ],
  );
}
