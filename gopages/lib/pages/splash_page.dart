import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gopages/pages/assesory/constants.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Text(
            "Welcome to the Pages login to proceed",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: (() => context.go('/LoginPage')),
              child: const Text("Login"))
        ],
      )),
    );
  }
}
