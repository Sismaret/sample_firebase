import 'package:flutter/material.dart';

class TextRegister extends StatelessWidget {
  final String labelInput;
  final String labelInputHint;

  const TextRegister(
      {Key? key, required this.labelInput, required this.labelInputHint})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelInput,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.grey)),
          child: TextField(
            style: TextStyle(fontSize: 15.0),
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: labelInputHint,
                hintStyle: const TextStyle(color: Colors.grey),
                contentPadding: const EdgeInsets.all(5)),
          ),
        ),
      ],
    );
  }
}
