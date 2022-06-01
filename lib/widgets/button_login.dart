import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String loginWith;
  final String iconLogin;
  final Color backgroundColor;
  final Function() onTap;
  final Color loginTextColor;

  const ButtonLogin(
      {Key? key,
      required this.loginWith,
      required this.iconLogin,
      required this.backgroundColor,
      required this.onTap,
      required this.loginTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: backgroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0))),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              loginWith,
              style: TextStyle(color: loginTextColor),
            ),
            Image.asset(iconLogin),
          ],
        ));
  }
}
