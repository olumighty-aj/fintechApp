import 'dart:ui';

import 'package:fintechapp/Screens/Home_screen/home_screen.dart';
import 'package:fintechapp/Screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool isShowSignInDialog = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: MediaQuery.of(context).size.width * 1.5,
            left: 50,
            top:0,
            bottom: 100,
            child: Image.asset(
              "assets/Spline.png",
            ),
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: const SizedBox(),
            ),
          ),
          
          // Positioned.fill(
          //   child: BackdropFilter(
          //     filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          //     child: const SizedBox(),
          //   ),
          // ),
          AnimatedPositioned(
            top: isShowSignInDialog ? -50 : 0,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            duration: const Duration(milliseconds: 260),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    const SizedBox(
                      width: 300,
                      child: Column(
                        children: [
                          SizedBox(height: 100,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            
                            
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text(
                                  "Welcome \n        To \nPennyWise",
                                  style: TextStyle(
                                    fontSize: 40,
                                    color:  Color.fromARGB(158, 23, 27, 97),
                                    fontWeight: FontWeight.w900,
                                    fontFamily: "Poppins",
                                    height: 1.2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 56),
                          // Text(
                          //   "Revolutionize your finances with ease and security. Instantly send and receive money anytime, anywhere. Stay on top of your expenses with real-time updates. Reach your financial goals with automated savings plans. Your security is our top priority with advanced encryption. Let’s get started!",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                          // ),
                        ],
                      ),
                    ),
                    
                    
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Text(
                          "Get tailored financial advice to boost your financial health. Join us and take the first step towards financial freedom.",style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color:  Color.fromARGB(158, 23, 27, 97),),),
                    ),

                     SizedBox(height: 120,),

                    ElevatedButton.icon(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainScreen()));
                      }, 
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text('Get Started', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: const Color.fromARGB(158, 23, 27, 97),),), SizedBox(width: 10,), Icon(Icons.arrow_circle_right_outlined, color: const Color.fromARGB(158, 23, 27, 97),)
                      ],)
                      )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}