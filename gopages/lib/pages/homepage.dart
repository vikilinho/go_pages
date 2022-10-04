import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Welcome to the Pages. login to proceed",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: (() => context.go('/')),
                child: const Text("Log Out"))
          ],
        ),
      )),
    );
  }
}
