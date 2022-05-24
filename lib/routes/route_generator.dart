import 'package:flutter/material.dart';
import 'package:hydra/screens/screens.dart';

class RouteGenerator {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MainView());

      case '/main':
        return MaterialPageRoute(builder: (_) => MainApp());

      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case '/signup':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case '/chatview':
        return MaterialPageRoute(builder: (_) => const ChatView());

      case '/welcome':
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case '/communitypage':
        return MaterialPageRoute(builder: (_) => const CommunityPage());

      case '/favoritepage':
        return MaterialPageRoute(builder: (_) => const FavoritePage());
      case '/users':
        return MaterialPageRoute(builder: (_) => const UsersScreen());

      default:
        _errorRoute();
    }
    return _errorRoute();
  }

  static Route _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
