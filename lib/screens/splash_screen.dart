import 'package:flutter/material.dart';
import 'package:innova_emphosis/screens/home_screens.dart';
import 'package:innova_emphosis/screens/list_of_users.dart';
import 'package:innova_emphosis/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const routeName = "/splashScreen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Image.asset('lib/images/union.png',
                  width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: size.height / 6.5,
                left: size.width/2.5,
                child: Image.asset(
                  'lib/images/little_boy.png',
                  width: size.width / 4,
                  height: size.height / 8,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: size.height / 3.5,
                child: Column(
                  children: const [

                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Lets get \n started',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text('Grow Togather ',
                        style: TextStyle(color: Colors.purple)),
                  ],
                ),
              ),
              Positioned(
                top: size.height / 1.6,
                left: size.width / 3,
                child: InkWell(
                  onTap: ()=>Navigator.pushNamed(context, HomeScreen.routeName,),

                  child: Container(
                    height: size.height / 17,
                    width: size.width / 2.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0)),
                        color: Colors.purple),
                    child: const Center(
                        child: Text("Join Now",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30))),
                  ),
                ),
              ),
              Positioned(
                  left: size.width / 1.5,
                  top: size.height / 10.5,
                  child: Image.asset('lib/images/dna.png'))
              // const Positioned(
              //
              //   top: 800,
              //   child: ,
              // )
            ],
          )),
    );
  }
}
