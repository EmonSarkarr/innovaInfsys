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
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle
            ),
            child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new)),
          ),
        ),
          ),
      backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        alignment: AlignmentDirectional.topStart,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/images/signup_union.png'), fit: BoxFit.fitWidth),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text('Create\nAccount :)',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),),
              const SizedBox(
                height: 40,
              ),
              Text('Enter Email id',
              style: TextStyle(
                color: Colors.black.withOpacity(.8),
                fontSize: 25,
                  fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600
              ),),
              TextFormField(

              ),
              const SizedBox(
                height: 30,
              ),
              Text('Create Username',
                style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600
                ),),
              TextFormField(

              ),
              const SizedBox(
                height: 30,
              ),
              Text('Create Password',
                style: TextStyle(
                    color: Colors.black.withOpacity(.8),
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600
                ),),
              TextFormField(

              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  width: size.width *.5,
                  decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 13),
                    child: Center(
                      child: Text('Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ),),
              )
            ],
          ),
        ),
      ),
      // body: Stack(
      //   alignment: AlignmentDirectional.center,
      //   clipBehavior: Clip.none,
      //   children: [
      //     Image.asset(
      //       'lib/images/signup_union.png',
      //       fit: BoxFit.cover,
      //       width: double.infinity,
      //     ),
      //     const Positioned(
      //       top: 10,
      //       child: Text('Create \n Account',
      //           style: TextStyle(
      //               color: Colors.deepPurple,
      //               fontSize: 35.0,
      //               fontWeight: FontWeight.bold)),
      //     ),
      //     Positioned(
      //       top: size.height / 1.4,
      //       left: size.width / 3,
      //       child: InkWell(
      //         onTap: () {
      //           Navigator.pushNamed(context, ListOfUsers.routeName);
      //         },
      //         child: Container(
      //           height: size.height / 17,
      //           width: size.width / 2.5,
      //           decoration: const BoxDecoration(
      //               borderRadius: BorderRadius.only(
      //                   topLeft: Radius.circular(25.0),
      //                   bottomRight: Radius.circular(25.0)),
      //               color: Colors.purple),
      //           child: const Center(
      //               child: Text("Sign Up",
      //                   style: TextStyle(color: Colors.white, fontSize: 30))),
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: 150,
      //       child: Container(
      //         width: size.width / 1,
      //         height: size.height / 4,
      //         child: Column(
      //           children: const [
      //             Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: TextField(
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                     border: OutlineInputBorder(),
      //                     filled: true,
      //                     fillColor: Colors.transparent,
      //                     prefixIcon: Icon(Icons.email),
      //                     hintText: "Enter Your Email id",
      //                     labelText: "Enter Email Id"),
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: TextField(
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                     border: OutlineInputBorder(),
      //                     filled: true,
      //                     fillColor: Colors.transparent,
      //                     prefixIcon: Icon(Icons.email),
      //                     hintText: "Enter Your Email or Password",
      //                     labelText: "Create Username"),
      //               ),
      //             ),
      //             Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: TextField(
      //                 keyboardType: TextInputType.emailAddress,
      //                 decoration: InputDecoration(
      //                     border: OutlineInputBorder(),
      //                     filled: true,
      //                     fillColor: Colors.transparent,
      //                     prefixIcon: Icon(Icons.password),
      //                     hintText: "Create a new Password",
      //                     labelText: "Password"),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
