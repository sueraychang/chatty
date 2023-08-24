import 'package:chatty/chatty.dart';
import 'package:chattyapp/utils/route_configuration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    if (FirebaseAuth.instance.currentUser != null) {
      Chatty.instance.fetchUser().then((value) {
        Navigator.pushNamedAndRemoveUntil(
            context, ROUTE_MAIN, (route) => false);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 500), () {
        Navigator.pushNamedAndRemoveUntil(
            context, ROUTE_LOGIN, (route) => false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Align(
        alignment: Alignment.center,
        child: Image.asset('assets/images/flutter_logo.png',
            width: 204, height: 204),
      ),
    );
  }
}
