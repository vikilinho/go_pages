import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              "Welcome to the login Page.",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "dvicxy@gmail.com",
                labelText: "Email",
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: "********",
                labelText: "Password",
              ),
            ),
            ElevatedButton(
                onPressed: (() => context.go('/HomePage')),
                child: const Text("Login"))
          ],
        ),
      )),
    );
  }
}
