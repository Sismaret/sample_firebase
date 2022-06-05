import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_labels.dart';

class EditProfileVw extends StatefulWidget {
  const EditProfileVw({Key? key}) : super(key: key);

  @override
  State<EditProfileVw> createState() => _EditProfileVwState();
}

class _EditProfileVwState extends State<EditProfileVw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          'Edit Account',
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Personal Data',
                style: AppLabels.titleFormBlack,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          labelText: 'Fullname',
                          labelStyle: AppLabels.inputLabel),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          labelText: 'Email Address',
                          labelStyle: AppLabels.inputLabel),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          labelText: 'Gender',
                          labelStyle: AppLabels.inputLabel),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          labelText: 'Level',
                          labelStyle: AppLabels.inputLabel),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black,
                                  width: 1.0,
                                  style: BorderStyle.solid)),
                          labelText: 'School Name',
                          labelStyle: AppLabels.inputLabel),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blueAccent),
                        onPressed: () {},
                        child: const Text(
                          'Save',
                          style: AppLabels.titleFormWhite,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
