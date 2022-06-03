import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/mainview/lessons_vw.dart';
import 'package:sample_firebase/mainview/profile_vw.dart';
import 'package:sample_firebase/widgets/card_lesson.dart';

class HomeVw extends StatefulWidget {
  const HomeVw({Key? key}) : super(key: key);

  @override
  State<HomeVw> createState() => _HomeVwState();
}

class _HomeVwState extends State<HomeVw> {
  void goToLesson() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [Text('Hai, Sismaret'), Text('Welcome')],
                ),
                Image.asset(
                  AppAssets.iconProfile,
                  height: 30,
                  width: 30,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  height: 135,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                const Positioned(
                  child: Text(
                    'I can do it !!!',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  left: 10,
                  top: 10,
                ),
                Positioned(
                  child: Image.asset(
                    AppAssets.iconImageHome,
                    height: 135,
                    width: 250,
                  ),
                  left: 150,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Choose lessons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'More details ...',
                  style: TextStyle(color: Colors.blueAccent),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: CardLesson(
                goToLesson: goToLesson,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: CardLesson(
                goToLesson: goToLesson,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: CardLesson(
                goToLesson: goToLesson,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 135.0),
              items: [
                Container(
                  width: double.infinity,
                  child: Image.asset(
                    AppAssets.iconImageBanner,
                    fit: BoxFit.fill,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Container(
                  width: 250,
                  decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LessonsVw()));
        },
        child: Image.asset(
          'assets/ic_discuss.png',
          height: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 20,
                  color: Colors.black.withOpacity(0.06))
            ],
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0))),
        child: BottomAppBar(
            color: Colors.white,
            child: Container(
              height: 60,
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ProfileVw()));
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/ic_home.png',
                              height: 20,
                            ),
                            Text('Home'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/ic_discuss.png',
                              height: 20,
                            ),
                            Text('Discuss'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Material(
                      child: InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/ic_profile.png',
                              height: 20,
                            ),
                            Text('Profile'),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ]),
            )),
      ),
    );
  }
}
