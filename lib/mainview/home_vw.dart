import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/mainview/chat_vw.dart';
import 'package:sample_firebase/mainview/subjects_vw.dart';
import 'package:sample_firebase/mainview/profile_vw.dart';
import 'package:sample_firebase/services/subject_serv.dart';
import 'package:sample_firebase/services/user_serv.dart';
import 'package:sample_firebase/view/register_vw..dart';
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hai, $fullName',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Text('Welcome')
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RegisterVw()));
                  },
                  child: Image.asset(
                    AppAssets.iconProfile,
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                const Positioned(
                  child: Text(
                    'I can do it !!!',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  left: 10,
                  top: 20,
                ),
                Positioned(
                  child: Image.asset(
                    AppAssets.imageHome,
                    height: 130,
                    width: 250,
                  ),
                  left: 150,
                  bottom: 0,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Choose subjects',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SubjectsVw()));
                  },
                  child: const Text(
                    'More details ...',
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ...subjectServ.getAllCardSubjects(),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 150.0),
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
    );
  }
}
