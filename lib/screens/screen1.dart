import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thinc_app/screens/screen2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
    var size = MediaQuery.of(context).size;
    // ignore: unnecessary_new

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: const Color.fromRGBO(255, 237, 233, 1),
            height: size.height * 0.56,
            width: size.width,
            child: PageView(controller: _pageController, children: [
              Container(
                color: const Color.fromRGBO(255, 237, 233, 1),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/page1.png',
                            scale: 1.10,
                          ),
                        ),
                        Positioned(
                          bottom: 130,
                          right: 40,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.3,
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 80,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color.fromRGBO(255, 237, 233, 1),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/page1.png',
                            scale: 1.10,
                          ),
                        ),
                        Positioned(
                          bottom: 130,
                          right: 40,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.3,
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 80,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color.fromRGBO(255, 237, 233, 1),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(
                            'assets/images/page1.png',
                            scale: 1.10,
                          ),
                        ),
                        Positioned(
                          bottom: 130,
                          right: 40,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.3,
                          ),
                        ),
                        Positioned(
                          top: 150,
                          left: 80,
                          child: Image.asset(
                            'assets/images/star-img.png',
                            scale: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 23,
          ),
          Flexible(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const SlideEffect(
                  spacing: 20,
                  radius: 5,
                  dotWidth: 89,
                  dotHeight: 4,
                  dotColor: Color.fromARGB(255, 187, 199, 187),
                  activeDotColor: Color.fromARGB(255, 50, 228, 56)),
            ),
          ),
          const SizedBox(height: 39),
          const Text(
            'Easy access to',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const Text(
            'learnings',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Ready to get started? Register as',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
          const Text('a new user!',
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: size.height * 0.39,
              height: size.width * 0.11,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromARGB(255, 50, 228, 56),
                      backgroundColor: const Color.fromARGB(255, 50, 228, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen2(),
                        ));
                  },
                  child: Text(
                    'Start Learning',
                    style: GoogleFonts.actor(color: Colors.black),
                  )))
        ],
      )),
    );
  }
}
  //  Container(
  //         width: size.width * 0.92,
  //         height: size.height * 0.57,
  //         color: Colors.amber,
  //         child: Stack(children: [
  //           PageView(controller: _pageController, children: [
  //             Container(
  //               width: size.width * 0.92,
  //               height: size.height * 0.57,
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                     image: const DecorationImage(
  //                         image: AssetImage(
  //                       'assets/images/storiesimage.png',
  //                     )),
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Material(
  //                   color: Colors.transparent,
  //                   child: InkWell(
  //                     onTap: () {},
  //                     child: Container(
  //                       width: size.width * 0.92,
  //                       height: size.height * 0.57,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               width: size.width * 0.92,
  //               height: size.height * 0.57,
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                     image: const DecorationImage(
  //                         image: AssetImage(
  //                       'assets/images/storiesimage.png',
  //                     )),
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Material(
  //                   color: Colors.transparent,
  //                   child: InkWell(
  //                     onTap: () {},
  //                     child: Container(
  //                       width: size.width * 0.92,
  //                       height: size.height * 0.57,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               width: size.width * 0.92,
  //               height: size.height * 0.57,
  //               child: Container(
  //                 decoration: BoxDecoration(
  //                     image: const DecorationImage(
  //                         image: AssetImage(
  //                       'assets/images/storiesimage.png',
  //                     )),
  //                     borderRadius: BorderRadius.circular(10)),
  //                 child: Material(
  //                   color: Colors.transparent,
  //                   child: InkWell(
  //                     onTap: () {},
  //                     child: Container(
  //                       width: size.width * 0.92,
  //                       height: size.height * 0.57,
  //                     ),
  //                   ),
  //                 ),
  //               ),
  //             )
  //           ]),
  //         ]),
  //       ),



   