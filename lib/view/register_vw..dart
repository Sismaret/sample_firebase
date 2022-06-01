import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/widgets/text_register.dart';

class RegisterVw extends StatefulWidget {
  const RegisterVw({Key? key}) : super(key: key);

  @override
  State<RegisterVw> createState() => _RegisterVwState();
}

class _RegisterVwState extends State<RegisterVw> {
  var selectedValue;
  List<DropdownMenuItem<String>> get level {
    List<DropdownMenuItem<String>> items = [
      const DropdownMenuItem(
        child: Text('Level 1'),
        value: 'level1',
      ),
      const DropdownMenuItem(
        child: Text('Level 2'),
        value: 'level2',
      ),
      const DropdownMenuItem(
        child: Text('Level 3'),
        value: 'level3',
      ),
    ];
    return items;
  }

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        iconTheme: const IconThemeData(color: Colors.black),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Register form',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: AppColors.backColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextRegister(
                labelInput: 'Email',
                labelInputHint: 'Example: sapirut@gmail.com',
              ),
              const SizedBox(
                height: 10,
              ),
              const TextRegister(
                labelInput: 'Full Name',
                labelInputHint: 'Example: Aini Anak Ayah',
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Gender',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            'Male',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            'Female',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Level',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: const Text('Select Level'),
                        value: selectedValue,
                        items: level,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          });
                        }),
                  )),
              const SizedBox(
                height: 10,
              ),
              const TextRegister(
                labelInput: 'School Name',
                labelInputHint: 'Example: SD Negeri 1 Depok',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: backgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0))),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
