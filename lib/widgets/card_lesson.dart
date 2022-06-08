import 'package:flutter/material.dart';

class CardLesson extends StatelessWidget {
  final Function() goToLesson;
  final String imageLoc;
  final String subject;
  final String progressPackage;

  const CardLesson({
    Key? key,
    required this.goToLesson,
    required this.imageLoc,
    required this.subject,
    required this.progressPackage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: goToLesson,
      child: Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xffF3F7F8),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      imageLoc,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subject,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('$progressPackage + Package excercise questions'),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: SliderTheme(
                          data: SliderThemeData(
                            overlayShape: SliderComponentShape.noThumb,
                            thumbShape: const RoundSliderThumbShape(
                                enabledThumbRadius: 0),
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
              ),
              const SizedBox(
                height: 5.0,
              )
            ],
          )),
    );
  }
}
