import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    late PageController _pageController = PageController();
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

    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Center(
          child: Container(
            width: size.width * 0.92,
            height: size.height * 0.57,
            child: Stack(children: [
              PageView(controller: _pageController, children: [
                Container(
                  width: size.width * 0.92,
                  height: size.height * 0.57,
                  child: Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                          'assets/images/storiesimage.png',
                        )),
                        borderRadius: BorderRadius.circular(10)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width * 0.92,
                          height: size.height * 0.57,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.92,
                  height: size.height * 0.57,
                  child: Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                          'assets/images/storiesimage.png',
                        )),
                        borderRadius: BorderRadius.circular(10)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width * 0.92,
                          height: size.height * 0.57,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.92,
                  height: size.height * 0.57,
                  child: Container(
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                          'assets/images/storiesimage.png',
                        )),
                        borderRadius: BorderRadius.circular(10)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width * 0.92,
                          height: size.height * 0.57,
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              Positioned(
                left: 30,
                top: 20,
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const SlideEffect(
                      spacing: 20,
                      radius: 5,
                      dotWidth: 84,
                      dotHeight: 4,
                      dotColor: Color.fromARGB(255, 187, 199, 187),
                      activeDotColor: Color.fromRGBO(255, 255, 255, 1)),
                ),
              ),
            ]),
          ),
        ),
      ]),
    ));
  }
}
        // Container(
        //     width: size.width * 1.99,
        //     height: size.height * 0.57,
        //     child: PageView(
        //       controller: _pageController,
        //       children: [
        //         Stack(children: [
        //           Positioned(
        //             left: 20,
        //             child: Container(
        //               width: size.width * 0.92,
        //               height: size.height * 0.57,
        //               decoration: BoxDecoration(
        //                   image: const DecorationImage(
        //                       image: AssetImage(
        //                     'assets/images/storiesimage.png',
        //                   )),
        //                   borderRadius: BorderRadius.circular(10)),
        //             ),
        //           ),
        //           Positioned(
        //             left: 30,
        //             top: 20,
        //             child: SmoothPageIndicator(
        //               controller: _pageController,
        //               count: 3,
        //               effect: const SlideEffect(
        //                   spacing: 20,
        //                   radius: 5,
        //                   dotWidth: 84,
        //                   dotHeight: 4,
        //                   dotColor: Color.fromARGB(255, 187, 199, 187),
        //                   activeDotColor: Color.fromRGBO(255, 255, 255, 1)),
        //             ),
        //           ),
        //         ]),
        //         Stack(children: [
        //           Positioned(
        //             left: 20,
        //             child: Container(
        //               width: size.width * 0.92,
        //               height: size.height * 0.57,
        //               decoration: BoxDecoration(
        //                   image: const DecorationImage(
        //                       image: AssetImage(
        //                     'assets/images/storiesimage.png',
        //                   )),
        //                   borderRadius: BorderRadius.circular(10)),
        //             ),
        //           ),
        //           Positioned(
        //             left: 30,
        //             top: 20,
        //             child: SmoothPageIndicator(
        //               controller: _pageController,
        //               count: 3,
        //               effect: const SlideEffect(
        //                   spacing: 20,
        //                   radius: 5,
        //                   dotWidth: 84,
        //                   dotHeight: 4,
        //                   dotColor: Color.fromARGB(255, 187, 199, 187),
        //                   activeDotColor: Color.fromRGBO(255, 255, 255, 1)),
        //             ),
        //           ),
        //         ]),
        //       ],
        //     ))