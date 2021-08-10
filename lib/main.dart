import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_ui/Homepage.dart';
import 'package:login_ui/Loginpage.dart';
import 'package:login_ui/Sign up screen.dart';
import 'package:login_ui/authservice.dart';
import 'package:login_ui/wrapper.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp(
      // initialRoute: '/',
      // routes: {
      //   '/' : (context) => MyApp(),
      //   '/sign' : (context) => SignUp(),
      //   '/welcome' : (context) => Welcome(),
      //   //'/Welcome' : (context) => Welcome(),
      //},
      ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthService>(
            create: (_) => AuthService(),
          )
        ],
        child: MaterialApp(
            title: 'Auth Example',
            theme: ThemeData(primaryColor: Colors.blue),
            initialRoute: '/',
            routes: {
              '/': (context) => Wrapper(),
              '/sign': (context) => SignUp(),
              '/welcome': (context) => HomePage(),
              //'/Welcome' : (context) => Welcome()
            }));
  }
}
