import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_story/core/themes/app_theme.dart';
import 'package:shared_story/presentation/routes/app_routes.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: CustomAppTheme.appTheme,
      routerDelegate: AppRoutes.router.routerDelegate,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
    );
  }
}
