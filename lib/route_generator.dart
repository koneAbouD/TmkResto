import 'package:flutter/material.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/recette/recette_detail_sreen.dart';
import 'package:flutter_application_1/recette/recette_form_screen.dart';
import 'package:flutter_application_1/recette/recette_list_sreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      case '/addRecette':
        return MaterialPageRoute(
            builder: (context) => const RecetteFormScreen());
      case '/listRecette':
        return MaterialPageRoute(
            builder: (context) => const RecetteListSreen());
      case '/recette':
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              RecipeScreen(recette: settings.arguments),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation = CurvedAnimation(parent: animation, curve: Curves.ease);
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: const Text("Error"),
              centerTitle: true,
            ),
            body: const Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }
}