import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';

class CardLesson extends StatelessWidget {
  const CardLesson({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xffF3F7F8),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    AppAssets.iconFisika,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Math',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const Text('0/50 Package excercise questions'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(0),
                      width: double.infinity,
                      child: SliderTheme(
                        data: SliderThemeData(
                          overlayShape: SliderComponentShape.noThumb,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 0),
                        ),
                        child: Slider(
                          value: 50,
                          max: 100,
                          onChanged: (val) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
