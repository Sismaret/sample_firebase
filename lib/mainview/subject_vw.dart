import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';

class SubjectVw extends StatefulWidget {
  const SubjectVw({Key? key}) : super(key: key);

  @override
  State<SubjectVw> createState() => _SubjectVwState();
}

class _SubjectVwState extends State<SubjectVw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backColor,
        appBar: AppBar(title: const Text('Choose lesson')),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose question package',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppAssets.iconFisika,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fisika',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '0/10 soal',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppAssets.iconFisika,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Fisika',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '0/10 soal',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            )));
  }
}
