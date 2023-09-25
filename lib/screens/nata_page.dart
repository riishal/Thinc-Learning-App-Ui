import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thinc_app/widgets/tab.1.dart';
import 'package:thinc_app/widgets/tab2.dart';
import 'package:thinc_app/widgets/tab3.dart';
import 'package:thinc_app/widgets/tab4.dart';
import 'package:thinc_app/widgets/tab4_2.dart';

class NataPage extends StatefulWidget {
  const NataPage({super.key});

  @override
  State<NataPage> createState() => _NataPageState();
}

class _NataPageState extends State<NataPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final controller1 = new PageController(
      viewportFraction: 0.8,
    );

    var size = MediaQuery.of(context).size;
    TabController tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(248, 249, 240, 1),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 170,
            width: double.infinity,
            color: Color.fromRGBO(255, 237, 233, 1),
            child: Column(
              children: [
                SizedBox(
                  height: 85,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    const Text(
                      'NATA',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 29),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(248, 249, 240, 1),
            ),
            width: 390,
            height: 50,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.green,
              tabs: [
                const Text('Videos'),
                const Text('Stories'),
                const Text('Key Notes'),
                const Text('Exercise'),
                const Text('Test'),
              ],
              controller: tabController,
              isScrollable: true,
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            //tab1
            const Tab1(),
            //tab2
            Tab2(),

            //tab3
            const Tab3(),
            //tab4
            Tab4(),

            //tab5
            Tab4_2()
            //tab6
          ]))
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              label: "Home",
              icon: Image.asset(
                'assets/images/tab1.png',
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
      ),
    );
  }
}
