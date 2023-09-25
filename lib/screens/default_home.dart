import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

int buttonindex = -1;

class DefaultHome extends StatefulWidget {
  const DefaultHome({super.key});

  @override
  State<DefaultHome> createState() => _DefaultHomeState();
}

class _DefaultHomeState extends State<DefaultHome> {
  late PageController _pageController = PageController();
  int pageNum = 0;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.96,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    List<String> course1 = [
      'Physics',
      'Doodle For Noobs',
      'Maths Beginning',
      'Course Introfuction'
    ];
    List<String> imagec = [
      'assets/images/vedio1.png',
      'assets/images/video2.png',
      'assets/images/video3.png',
      'assets/images/video4.png'
    ];

    List<String> image = [
      'assets/images/defaultx1.png',
      'assets/images/defaultx2.png',
      'assets/images/defaultx3.png',
      'assets/images/defaultx4.png'
    ];
    List<String> lorem = ['Lorem ipsum', '5 mins', 'Solved Papers'];
    List<String> course = ['Architecture', 'Design', 'Doodling', 'Drawing'];
    List<String> sImage = [
      'assets/images/sImage1.png',
      'assets/images/sImage2.png',
      'assets/images/sImage3.png',
      'assets/images/sImage4.png',
      'assets/images/sImage5.png'
    ];
    List<String> sName3 = ['', '', 'Design', '', ''];
    List<String> sName2 = [
      'For Architecture',
      'For Design',
      'For Architecture +',
      'For Doodling',
      'For Drawing'
    ];

    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 237),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 70,
                width: 100,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                  'assets/images/Default1.png',
                ))),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Hello Welcome!',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: size.height * 0.26,
              width: size.width * 70,
              child: PageView(controller: _pageController, children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 98, 203, 102),
                      borderRadius: BorderRadius.circular(15)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/Default2.png',
                              scale: 1.1,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              height: size.height * 0.18,
                              width: size.width * 0.45,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Architecture',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const SizedBox(
                                        height: 35,
                                        width: 190,
                                        child: Text(
                                            'Gorem ipsum dolor sit amet,\n consectetur adipiscing elit..',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: Colors.white))),
                                    SizedBox(
                                        height: 25,
                                        width: 80,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                backgroundColor: Colors.white),
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) => const Screen5(),
                                              //     ));
                                            },
                                            child: const Text(
                                              'Enroll Now',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w300),
                                            )))
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 177, 143, 214),
                      borderRadius: BorderRadius.circular(15)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/Default2.png',
                              scale: 1.1,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              height: size.height * 0.18,
                              width: size.width * 0.45,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Architecture',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const SizedBox(
                                        height: 35,
                                        width: 190,
                                        child: Text(
                                            'Gorem ipsum dolor sit amet,\n consectetur adipiscing elit..',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: Colors.white))),
                                    SizedBox(
                                        height: 25,
                                        width: 80,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                backgroundColor: Colors.white),
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) => const Screen5(),
                                              //     ));
                                            },
                                            child: const Text(
                                              'Enroll Now',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w300),
                                            )))
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 203, 168, 98),
                      borderRadius: BorderRadius.circular(15)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/Default2.png',
                              scale: 1.1,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              height: size.height * 0.18,
                              width: size.width * 0.45,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Architecture',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const SizedBox(
                                        height: 35,
                                        width: 190,
                                        child: Text(
                                            'Gorem ipsum dolor sit amet,\n consectetur adipiscing elit..',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 10,
                                                color: Colors.white))),
                                    SizedBox(
                                        height: 25,
                                        width: 80,
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                backgroundColor: Colors.white),
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //       builder: (context) => const Screen5(),
                                              //     ));
                                            },
                                            child: const Text(
                                              'Enroll Now',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8,
                                                  fontWeight: FontWeight.w300),
                                            )))
                                  ]),
                            )
                          ]),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                child: SmoothPageIndicator(
                    axisDirection: Axis.horizontal,
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        radius: 7,
                        dotHeight: 5,
                        dotWidth: 11,
                        dotColor: Color.fromARGB(255, 187, 199, 187),
                        activeDotColor: Color.fromARGB(255, 98, 203, 102))),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Our Courses',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.50,
              width: double.infinity,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.all(15),
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: size.height * 0.25,
                    childAspectRatio: 0.98,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          child: Stack(children: [
                            Positioned(
                                top: 18,
                                left: 17,
                                child: Text(
                                  course[index],
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                            Positioned(
                                top: 40,
                                left: 19,
                                child: Text(lorem[0],
                                    style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300))),
                            Positioned(
                                bottom: 0,
                                left: 5,
                                child: Image.asset(
                                  image[index],
                                )),
                            Positioned(
                                top: 115,
                                left: 80,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Enroll',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 108, 223, 112)),
                                    ))),
                            Positioned(
                                top: 115,
                                left: 110,
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.arrow_forward,
                                      color: Color.fromARGB(255, 108, 223, 112),
                                      size: 16,
                                    )))
                          ]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Demo videos',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Center(
              child: SizedBox(
                  height: size.height * 0.48,
                  width: size.width * 70,
                  child: Stack(children: [
                    ListView.separated(
                        padding: const EdgeInsets.all(15),
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13)),
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                child: ListTile(
                                  leading: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image:
                                                  AssetImage(imagec[index]))),
                                      child: const Center(
                                          child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor:
                                            Color.fromARGB(255, 108, 223, 112),
                                        child: Icon(
                                          Icons.play_arrow,
                                          size: 15,
                                          color: Colors.black,
                                        ),
                                      ))),
                                  title: Text(
                                    course1[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                  ),
                                  subtitle: Text(
                                    lorem[1],
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 10,
                            ),
                        itemCount: 4),
                  ])),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Study Materials',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                    height: 140,
                    width: 340,
                    child: GridView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: size.height * 0.35,
                          childAspectRatio: 0.98,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(sImage[index])),
                              borderRadius: BorderRadius.circular(15)),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                  child: Center(
                                      child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    lorem[2],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    sName2[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    sName3[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: Colors.white),
                                  ),
                                ],
                              ))),
                            ),
                          ),
                        );
                      },
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
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
            label: "About",
            icon: Image.asset(
              'assets/images/tab2.png',
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/message.png',
              scale: 1.1,
            ),
            const Text(
              'Connect',
              style: TextStyle(fontSize: 8),
            )
          ],
        ),
      ),
    );
  }
}
