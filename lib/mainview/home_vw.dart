import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/mainview/chat_vw.dart';
import 'package:sample_firebase/mainview/lessons_vw.dart';
import 'package:sample_firebase/mainview/profile_vw.dart';
import 'package:sample_firebase/services/subject_serv.dart';
import 'package:sample_firebase/services/user_serv.dart';
import 'package:sample_firebase/widgets/button_nav.dart';
import 'package:sample_firebase/widgets/carousel_home.dart';

class HomeVw extends StatefulWidget {
  const HomeVw({Key? key}) : super(key: key);

  @override
  State<HomeVw> createState() => _HomeVwState();
}

class _HomeVwState extends State<HomeVw> {
  void goToLesson() {}

  SubjectServ subjectServ = SubjectServ();
  UserServ userServ = UserServ();
  String? fullName;

  @override
  Widget build(BuildContext context) {
    fullName = userServ.getFullName();
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
                  children: [Text('Hai, $fullName'), const Text('Welcome')],
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
                    AppAssets.imageHome,
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
              children: [
                const Text(
                  'Choose lessons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LessonsVw()));
                  },
                  child: const Text(
                    'More details ...',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            ...subjectServ.getAllCardSubjects(),
            CarouselSlider(
              options: CarouselOptions(height: 135.0),
              items: const [
                CarouselHome(
                  backgroundColor: Colors.white,
                ),
                CarouselHome(
                  backgroundColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('To Chat View');
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ChatWv()));
        },
        child: Image.asset(
          AppAssets.iconDiscuss,
          height: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                color: Colors.black.withOpacity(0.006))
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            child: SizedBox(
              height: 50,
              child: Row(children: [
                ButtonNav(
                  imageLoc: AppAssets.iconHome,
                  lblButton: 'Home',
                  goProfile: () {},
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconDiscuss,
                  lblButton: 'Discussion',
                  goProfile: () {},
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconProfile,
                  lblButton: 'Profile',
                  goProfile: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileVw()));
                  },
                ),
              ]),
            )),
      ),
    );
  }
}
