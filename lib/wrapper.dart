// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
//
// class ErrorHandler{
//
//
//   Future<dynamic>? errorDialog(BuildContext context, e) {
//     return showCupertinoDialog(
//         context: context,
//         barrierDismissible: true,
//         builder: (context){
//           return AlertDialog(
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),),
//             title: Text("Error"),
//             content:  Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//               Container(
//                 height: 100.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20)
//                 ),
//                 child: Center(
//                   child: Text(e.message.toString()),
//                 ),
//               ),
//                 Container(
//                   height: 50,
//                   child: Row(
//                     children: [TextButton
//                       (onPressed: (){
//                         Navigator.of(context).pop();
//                     }, child: Text("ok"))],
//                   ),
//                 )
//               ],
//             ),
//           );
//     }
//     );
//   }
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/Homepage.dart';
import 'package:login_ui/Loginpage.dart';
import 'package:login_ui/authservice.dart';
import 'package:login_ui/user_model.dart';
import 'package:provider/provider.dart';
import 'package:login_ui/user_model.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (_, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? LoginPage() : HomePage();
          } else
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
        });
  }
}
