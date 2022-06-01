import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/view/login_vw.dart';

class SplashVw extends StatefulWidget {
  const SplashVw({Key? key}) : super(key: key);

  @override
  State<SplashVw> createState() => _SplashVwState();
}

class _SplashVwState extends State<SplashVw> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginVw()));
    });
  }

  @override
  Widget build(BuildContext context) {
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
