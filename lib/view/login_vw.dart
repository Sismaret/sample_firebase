import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/constants/app_labels.dart';

class LoginVw extends StatelessWidget {
  const LoginVw({Key? key}) : super(key: key);

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
                      fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Image.asset(
                AppAssets.iconLogin,
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 20.0,
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
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppLabels.lblLoginGoogle,
                          style: const TextStyle(color: Colors.black),
                        ),
                        Image.asset(AppAssets.iconLoginGoogle),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60, vertical: 1),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        primary: Colors.black),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(AppLabels.lblLoginApple),
                        Image.asset(AppAssets.iconLoginApple),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
