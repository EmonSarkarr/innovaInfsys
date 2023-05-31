import 'package:flutter/material.dart';
import 'package:innova_emphosis/screens/list_of_users.dart';
import 'package:innova_emphosis/screens/login_screen.dart';
import 'package:innova_emphosis/screens/signup_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = "/homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Home page')),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  icon: const Icon(Icons.login),
                  label: const Text("Go to Log in page")),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, SignupScreen.routeName);
                  },
                  icon: const Icon(Icons.app_registration),
                  label: const Text("Go to Signup Page")),
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, ListOfUsers.routeName);
                  },
                  icon: const Icon(Icons.list),
                  label: const Text("See all Users")),
            ]),
      ),
    );
  }
}
