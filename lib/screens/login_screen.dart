import 'package:flutter/material.dart';
import 'list_of_users.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  static const routeName = "/loginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                  color: Colors.purple,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  )),
            )),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Image.asset(
              'lib/images/login_union.png',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            const Positioned(
              top: 5,
              child: Text("Welcome Back!",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold)),
            ),
            const Positioned(
              top: 50,
              child: Text("Enter your UserName and Password",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold)),
            ),

            Positioned(
              top: size.height / 1.4,
              left: size.width / 3,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ListOfUsers.routeName);
                },
                child: Container(
                  height: size.height / 17,
                  width: size.width / 2.5,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0)),
                      color: Colors.purple),
                  child: const Center(
                      child: Text("LogIN",
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                ),
              ),
            ),
            Positioned(
              top: 150,
              child: Container(
                width: size.width / 1,
                height: size.height / 4,
                child: Column(
                  children: const [
                    Text(
                      'User name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your email or user name',
                        ),
                      ),
                    ),
                    Text(
                      'Password',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter Your Password',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
