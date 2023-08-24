// ignore_for_file: constant_identifier_names

import 'package:chatty/chatty.dart';
import 'package:chattyapp/ui/chat_page.dart';
import 'package:chattyapp/ui/login_page.dart';
import 'package:chattyapp/ui/main_page.dart';
import 'package:chattyapp/ui/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';

const String ROUTE_SPLASH = '/';
const String ROUTE_LOGIN = '/login';
const String ROUTE_MAIN = '/main';
const String ROUTE_CHAT = '/chat';

class RouteConfiguration {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_SPLASH:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            return const SplashPage();
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
      case ROUTE_LOGIN:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            return const LoginPage();
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );

      case ROUTE_MAIN:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            return const MainPage();
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );

      case ROUTE_CHAT:
        Map<String, dynamic> args =
            (settings.arguments as Map) as Map<String, dynamic>;
        final ChattyRoom room = args['room'];
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            return ChatPage(room: room);
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );

      default:
        return PageRouteBuilder(
          pageBuilder: (context, animation1, animation2) {
            if (FirebaseAuth.instance.currentUser == null) {
              return const LoginPage();
            } else {
              return const MainPage();
            }
          },
          transitionDuration: Duration.zero,
          reverseTransitionDuration: Duration.zero,
        );
    }
  }
}
