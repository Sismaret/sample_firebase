import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/constants/app_labels.dart';
import 'package:sample_firebase/mainview/home_vw.dart';
import 'package:sample_firebase/view/register_vw..dart';
import 'package:sample_firebase/widgets/button_login.dart';

class LoginVw extends StatefulWidget {
  const LoginVw({Key? key}) : super(key: key);

  @override
  State<LoginVw> createState() => _LoginVwState();
}

class _LoginVwState extends State<LoginVw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backColor,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLabels.lblLogin,
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Image.asset(
                AppAssets.iconLogin,
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 2,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  AppLabels.lblWelcome,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 22.0),
                ),
              ),
              Text(
                AppLabels.lblWelcomeDesc,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 12.0),
              ),
              const Spacer(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ButtonLogin(
                  loginWith: AppLabels.lblLoginGoogle,
                  backgroundColor: Colors.white,
                  iconLogin: AppAssets.iconLoginGoogle,
                  loginTextColor: Colors.black,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeVw()));
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                child: ButtonLogin(
                  loginWith: AppLabels.lblLoginApple,
                  backgroundColor: Colors.black,
                  iconLogin: AppAssets.iconLoginApple,
                  loginTextColor: Colors.white,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ));
  }
}
