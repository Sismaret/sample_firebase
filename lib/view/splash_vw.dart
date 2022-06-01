import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/view/login_vw.dart';

class SplashVw extends StatelessWidget {
  const SplashVw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginVw()));
    });
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          AppAssets.iconFlash,
          width: MediaQuery.of(context).size.width * 0.5,
        ),
      ),
    );
  }
}
