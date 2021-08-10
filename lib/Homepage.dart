import 'package:flutter/material.dart';
import 'package:login_ui/authservice.dart';
import 'package:login_ui/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget{
  @override
  _HomepageViewState createState() => _HomepageViewState();
}

class _HomepageViewState extends State <HomePage> {

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 70.0, 0.0, 0.0),
                  child: Column(
                    children: [
                      Text(
                        "Welcome",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500),
                      ),
                    ],

                  ),
                ),
                SizedBox(
                  height: 0,
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 100.0, 0.0, 0.0),
                  child: Text(
                    "kehinde",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w800,
                        color: Colors.deepOrange),
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          //   child: Column(
          //     children: [
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: 'Email',
          //           labelStyle: TextStyle(
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               color: Colors.grey,
          //               fontSize: 15),
          //           focusedBorder: UnderlineInputBorder(
          //               borderSide: BorderSide(color: Colors.deepOrangeAccent)),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 20,
          // ),
          // Container(
          //   padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          //   child: Column(
          //     children: [
          //       TextField(
          //         decoration: InputDecoration(
          //           labelText: 'Password',
          //           labelStyle: TextStyle(
          //               fontFamily: 'Montserrat',
          //               fontWeight: FontWeight.bold,
          //               color: Colors.grey,
          //               fontSize: 15),
          //           focusedBorder: UnderlineInputBorder(
          //               borderSide: BorderSide(color: Colors.deepOrange)),
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   alignment: Alignment(1.0, 0.0),
          //   padding: EdgeInsets.only(top: 15.0, left: 20.0, right: 20),
          //   child: InkWell(
          //     child: Text(
          //       "Forgot Password",
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 15,
          //           color: Colors.deepOrange[600],
          //           decoration: TextDecoration.underline),
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 30,
          // ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            height: 45,
            child: GestureDetector(
              onTap: () async {
               await authService.SignOut();
               //  AuthService().signOut();
               // Navigator.pushNamed(context, '/sign');
              },

              child: Material(
                borderRadius: BorderRadius.circular(20),
                shadowColor: Colors.deepOrangeAccent,
                color: Colors.deepOrange,
                elevation: 3.0,
                child: Center(
                  child: Text(
                    "LOGOUT",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: "Montserrat"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(left: 30, right: 30),
            color: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, style: BorderStyle.solid, width: 2.0),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Sign in With facebook",
                      style: TextStyle(
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 40,),
        ],
      ),
    );
  }
}
