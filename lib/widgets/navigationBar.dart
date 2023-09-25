import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:thinc_app/homepage.dart';
import 'package:thinc_app/profilepage.dart';
import 'package:thinc_app/screens/screen1.dart';

class NvigationBar extends StatefulWidget {
  const NvigationBar({super.key});

  @override
  State<NvigationBar> createState() => _NvigationBarState();
}

class _NvigationBarState extends State<NvigationBar> {
  final tabs = [Homepage(), SizedBox(), SizedBox(), ProfilePage()];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 30,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                'assets/images/tab1.png',
                color: Colors.green,
              )),
          BottomNavigationBarItem(
              label: "Time table",
              icon: Image.asset(
                'assets/images/c2.png',
              )),
          BottomNavigationBarItem(
            label: "Courses",
            icon: Image.asset(
              'assets/images/c1.png',
            ),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Image.asset(
              'assets/images/tab3.png',
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
    );
  }
}
