import 'package:flutter/material.dart';
import 'package:sample_firebase/constants/app_assets.dart';
import 'package:sample_firebase/constants/app_colors.dart';
import 'package:sample_firebase/mainview/chat_vw.dart';
import 'package:sample_firebase/mainview/home_vw.dart';
import 'package:sample_firebase/mainview/profile_vw.dart';
import 'package:sample_firebase/services/subject_serv.dart';
import 'package:sample_firebase/services/user_serv.dart';
import 'package:sample_firebase/widgets/button_nav.dart';

class NavVw extends StatefulWidget {
  const NavVw({Key? key}) : super(key: key);

  @override
  State<NavVw> createState() => _NavVwState();
}

class _NavVwState extends State<NavVw> {
  void goToLesson() {}

  SubjectServ subjectServ = SubjectServ();
  UserServ userServ = UserServ();
  String? fullName;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    fullName = userServ.getFullName();
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: PageView(
        controller: _pageController,
        children: const [
          HomeVw(),
          ProfileVw(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const ChatWv()));
        },
        child: const Icon(
          Icons.chat,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.backColor,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                blurRadius: 20,
                color: Colors.black.withOpacity(0.006))
          ],
        ),
        child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 1,
            child: SizedBox(
              height: 50,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                ButtonNav(
                  imageLoc: AppAssets.iconHome,
                  lblButton: 'Home',
                  goProfile: () {
                    _pageController.animateToPage(0,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut);
                  },
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconNote,
                  lblButton: 'Task',
                  goProfile: () {
                    _pageController.animateToPage(0,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut);
                  },
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconDiscuss,
                  lblButton: 'Discussion',
                  goProfile: () {},
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconLang,
                  lblButton: 'Language',
                  goProfile: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut);
                  },
                ),
                ButtonNav(
                  imageLoc: AppAssets.iconDna,
                  lblButton: 'DNA',
                  goProfile: () {
                    _pageController.animateToPage(1,
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut);
                  },
                ),
              ]),
            )),
      ),
    );
  }
}
