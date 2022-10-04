import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
              onPressed: (() => context.go('/SplashPage')),
              child: const Text("Log Out"))
        ],
      )),
    );
  }
}
