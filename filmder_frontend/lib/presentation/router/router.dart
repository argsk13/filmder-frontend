import 'package:filmder_frontend/presentation/screens/home_page_screen.dart';
import 'package:filmder_frontend/presentation/screens/login_screen.dart';
import 'package:filmder_frontend/presentation/screens/overview_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(title: 'Welcome to Filmder!'),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(title: 'Discover, match. Filmder.'),
        );
      case '/overview':
        return MaterialPageRoute(builder: (_) => const OverviewScreen());
    }
  }
}
