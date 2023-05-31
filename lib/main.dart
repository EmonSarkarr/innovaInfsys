import 'package:flutter/material.dart';
import 'package:innova_emphosis/screens/home_screens.dart';
import 'package:innova_emphosis/screens/list_of_users.dart';
import 'package:innova_emphosis/screens/login_screen.dart';
import 'package:innova_emphosis/screens/signup_screen.dart';

import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        ListOfUsers.routeName: (context) => ListOfUsers(),
        SignupScreen.routeName: (context) => SignupScreen(),
      },
    );
  }
}
