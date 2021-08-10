import 'package:flutter/material.dart';
import 'package:login_ui/authservice.dart';
import 'package:provider/provider.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginViewState createState() => _LoginViewState();
// }

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // late String email, password;
  // get validateEmail => null;
  // // To check form filed
  // checkField() {
  //   final form = _formKey.currentState;
  //   if (form!.validate()){
  //     form.save();
  //     return true;
  //   }
  //     return false;
  // }

  //To validate email.

  // ignore: non_constant_identifier_names
  // String? ValidateEmail(var value) {
  //   Pattern pattern =
  //       r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  //   RegExp regex = new RegExp(pattern);
  //   if (!regex.hasMatch(value))
  //     return 'enter valid mail';
  //   else
  //     return null;
  // }

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    //var formKey;
    //   return Scaffold(
    //     body: Container(
    //       height: MediaQuery
    //           .of(context)
    //           .size
    //           .height,
    //       width: MediaQuery
    //           .of(context)
    //           .size
    //           .width,
    //       child: Form(key: formKey, child: _buildLoginForm()
    //       ),
    //     ),
    //   );
    // }

    // _buildLoginForm() {
    //   resizeToAvoidBottomInset:
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                child: Text(
                  "Hello",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20.0, 160.0, 0.0, 0.0),
                child: Text(
                  "There",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(200.0, 160.0, 0.0, 0.0),
                child: Text(
                  ".",
                  style: TextStyle(
                      fontSize: 60,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 15),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepOrangeAccent)),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.only(top: 18.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 15),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                  ),
                  obscureText: true,
                  validator: (value) =>
                      value!.isEmpty ? 'Email is required' : null)
            ],
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Container(
          alignment: Alignment(1.0, 0.0),
          padding: EdgeInsets.only(top: 5.0, left: 10.0, right: 20),
          child: InkWell(
            child: Text(
              "Forgot Password",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.deepOrange[600],
                  decoration: TextDecoration.underline),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(left: 30, right: 30),
          height: 45,
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/welcome');
              authService.SignInwithEmailandPassword(
                  emailController.text, passwordController.text);
            },
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.deepOrangeAccent,
              color: Colors.deepOrange,
              elevation: 3.0,
              child: Center(
                child: Text(
                  "LOGIN",
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
          height: 10,
        ),
        Container(
          height: 45,
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
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New to Spotify?",
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.normal,
              ),
            ),
            Container(
              alignment: Alignment(1.0, 0.0),
              padding: EdgeInsets.only(top: 0.0, left: 5.0, right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/sign');
                },
                child: InkWell(
                  child: Text(
                    "Register Here",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                        color: Colors.deepOrange[600],
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
      ),
    );
  }
}
