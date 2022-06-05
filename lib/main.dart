import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/firebase_options.dart';
import 'package:sample_firebase/mainview/home_vw.dart';
import 'package:sample_firebase/view/login_vw.dart';
import 'package:sample_firebase/view/register_vw..dart';
import 'package:sample_firebase/view/splash_vw.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // options: DefaultFirebaseOptions.currentPlatform,
      );
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
      // home: const SplashVw(),
      initialRoute: "/",
      routes: {
        "/": (context) => const SplashVw(),
        "/login": (context) => const LoginVw(),
        "/home": (context) => const HomeVw(),
        "/register": (context) => const RegisterVw(),
      },
    );
  }
}
