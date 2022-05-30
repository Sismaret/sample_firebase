import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_firebase/view/login_vw.dart';

class SplashVw extends StatelessWidget {
  const SplashVw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginVw()));
    });
    return SafeArea(
        child: Container(
      color: Colors.blueAccent,
      child: Center(
        child: Image.asset(
          'assets/auth/ic_splash.png',
          height: 200,
          width: 200,
        ),
      ),
    ));
  }
}
