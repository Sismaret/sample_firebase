import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/widgets/card_lesson.dart';

class HomeVw extends StatefulWidget {
  const HomeVw({Key? key}) : super(key: key);

  @override
  State<HomeVw> createState() => _HomeVwState();
}

class _HomeVwState extends State<HomeVw> {
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
                  children: const [
                    Text('Hai, Sismaret'),
                    Text('Selamat datang')
                  ],
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
            Container(
              height: 150,
              decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
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
              height: 10,
            ),
            const Expanded(
              child: CardLesson(),
            ),
            const SizedBox(
              height: 5,
            ),
            const Expanded(
              child: CardLesson(),
            ),
            const SizedBox(
              height: 5,
            ),
            const Expanded(
              child: CardLesson(),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
                        onTap: () {},
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
