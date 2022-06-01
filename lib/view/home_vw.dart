import 'package:flutter/material.dart';

class HomeVw extends StatefulWidget {
  const HomeVw({Key? key}) : super(key: key);

  @override
  State<HomeVw> createState() => _HomeVwState();
}

class _HomeVwState extends State<HomeVw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
