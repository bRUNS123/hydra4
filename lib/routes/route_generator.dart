import 'package:flutter/material.dart';
import 'package:hydra/main.dart';
import 'package:hydra/screens/auth/welcome/welcome_screen.dart';
import 'package:hydra/screens/chat/chat_view.dart';
import 'package:hydra/screens/community/community_page.dart';
import 'package:hydra/screens/favorites/favorite_page.dart';
import 'package:hydra/screens/main/main_view.dart';

import '../screens/auth/login/login_screen.dart';
import '../screens/auth/signup/signup_screen.dart';

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
