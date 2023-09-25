import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  late PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
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

    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Container(
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
              left: 10,
              top: 20,
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 4,
                effect: const SlideEffect(
                    spacing: 10,
                    radius: 5,
                    dotWidth: 70,
                    dotHeight: 4,
                    dotColor: Color.fromARGB(255, 187, 199, 187),
                    activeDotColor: Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: size.height * 0.065,
                    width: size.width * 0.40,
                    child: Row(children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 208, 247, 209),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(Icons.question_answer_outlined,
                            color: Colors.green),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        'Ask a doubt',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(7)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: size.height * 0.065,
                    width: size.width * 0.45,
                    child: Row(children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 30,
                        width: 40,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 247, 235, 218),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Icon(Icons.favorite_border,
                            color: Colors.orange),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      const Text(
                        'Add To Fvaorite',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: size.height * 0.50,
          width: size.width * 0.90,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7)),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          height: 80,
                          width: double.infinity,
                          child: Center(
                            child: ListTile(
                                title: const Text('Course Introfuction',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500)),
                                subtitle: const Text('5 mins',
                                    style: TextStyle(
                                      fontSize: 15,
                                    )),
                                trailing: const Icon(
                                  Icons.download_sharp,
                                  color: Colors.black,
                                ),
                                leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/nata2.png')),
                                        borderRadius: BorderRadius.circular(0)),
                                    child: const Center(
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor:
                                            Color.fromARGB(255, 42, 230, 49),
                                        child: Icon(
                                          Icons.play_arrow_rounded,
                                          size: 17,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ))),
                          ),
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 4),
        )
      ]),
    );
  }
}
