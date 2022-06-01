import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample_firebase/view/home_vw.dart';
import 'package:sample_firebase/view/login_vw.dart';
import 'package:sample_firebase/view/register_vw..dart';
import 'package:sample_firebase/view/splash_vw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        fontFamily: 'Lato',
        primarySwatch: Colors.blue,
      ),
      home: const SplashVw(),
      // initialRoute: "/",
      // routes: {
      //   "/": (context) => const SplashVw(),
      //   "/login": (context) => const LoginVw(),
      //   "/home": (context) => const HomeVw(),
      //   "/register": (context) => const RegisterVw(),
      // },
    );
  }
}
