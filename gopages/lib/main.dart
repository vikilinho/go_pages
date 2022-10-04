import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gopages/pages/homepage.dart';
import 'package:gopages/pages/login_page.dart';
import 'package:gopages/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Splash();
        },
      ),
      GoRoute(
        path: '/LoginPage',
        builder: (BuildContext context, GoRouterState state) {
          return const LoginPage();
        },
      ),
      GoRoute(
        path: '/HomePage',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePage();
        },
      ),
    ],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Go Router',
        routerConfig: _router,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ));
  }
}
