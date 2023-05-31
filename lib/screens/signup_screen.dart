import 'package:flutter/material.dart';

import 'list_of_users.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const routeName = "/signUpScreen";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
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
            'lib/images/signup_union.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const Positioned(
            top: 10,
            child: Text('Create \n Account',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
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
                        topLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                    color: Colors.purple),
                child: const Center(
                    child: Text("Sign Up",
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
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Your Email id",
                          labelText: "Enter Email Id"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(Icons.email),
                          hintText: "Enter Your Email or Password",
                          labelText: "Create Username"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Colors.transparent,
                          prefixIcon: Icon(Icons.password),
                          hintText: "Create a new Password",
                          labelText: "Password"),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
