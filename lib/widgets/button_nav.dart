import 'package:flutter/material.dart';

class ButtonNav extends StatelessWidget {
  final String imageLoc;
  final String lblButton;
  final Function() goProfile;
  const ButtonNav(
      {Key? key,
      required this.imageLoc,
      required this.lblButton,
      required this.goProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Material(
          color: Colors.white,
          child: InkWell(
            highlightColor: Colors.white,
            onTap: goProfile,
            child: Column(
              children: [
                Image.asset(
                  imageLoc,
                  height: 20,
                ),
                Text(lblButton),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
