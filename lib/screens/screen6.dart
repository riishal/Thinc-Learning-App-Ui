import 'package:flutter/material.dart';
import 'package:thinc_app/screens/Screen5.dart';
import 'package:thinc_app/widgets/navigationBar.dart';

import '../homepage.dart';

int buttonIndex = -1;

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    List<String> course = [
      'Regular/Repeater B.Arch Batch',
      'One Year B.Arch Weekend Batch',
      'Two Year B.Arch Weekend Batch',
      'NATA Only Crash Batch'
    ];
    List<String> image = [
      'assets/images/regular.png',
      'assets/images/oneyear.png',
      'assets/images/twoyear.png',
      'assets/images/nata.png'
    ];
    final List<Color> colors1 = [
      const Color.fromARGB(255, 212, 246, 213),
      const Color.fromARGB(255, 253, 239, 219),
      const Color.fromARGB(255, 213, 235, 253),
      const Color.fromARGB(255, 221, 249, 222),

      // Add more colors as needed
    ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 237),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.26,
            width: size.width * 1.0,
            color: const Color.fromRGBO(184, 237, 244, 0.42),
            child: Stack(children: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen5(),
                        ));
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 20,
                  )),
              const Positioned(
                bottom: 60,
                left: 30,
                child: Text('Architecture',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    )),
              ),
              Positioned(
                right: 25,
                bottom: 0,
                child: SizedBox(
                  height: 100,
                  child: Image.asset(
                    'assets/images/Architecture.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ]),
          ),
          Container(
            height: size.height * 0.13,
            color: Colors.white,
            width: size.width * 1.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text('Overview',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Dorem ipsum dolor sit amet, consectetur adip nc',
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                  Row(
                    children: [
                      Text('vulputate or sit amet, consecsum dolor',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 13)),
                      SizedBox(
                        width: 8,
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              const Text('See More',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                              SizedBox(
                                height: 2,
                                width: 50,
                                child: Divider(
                                  thickness: 1,
                                  color: Colors.black,
                                  endIndent: 2,
                                  indent: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: size.height * 0.13,
                  width: size.width * 1.0,
                  child: Stack(children: [
                    const Positioned(
                        bottom: 70,
                        left: 18,
                        child: Text('Mentor',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500))),
                    Positioned(
                        bottom: 25,
                        left: 16,
                        child: SizedBox(
                          height: 35,
                          width: 45,
                          child: Container(
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/jhon Doe.png')),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        )),
                    Positioned(
                        bottom: 25,
                        left: 60,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Jhon Doe',
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black)))),
                    Positioned(
                        bottom: 10,
                        left: 60,
                        child: TextButton(
                            onPressed: () {},
                            child: const Text('Lorem ipsum',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black)))),
                  ]),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Row(
            children: [
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Select your course',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black)),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      height: size.height * 0.35,
                      width: size.width * 0.92,
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                buttonIndex = index;
                                setState(() {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) => SizedBox(
                                      height: 190,
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Text(course[index],
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black)),
                                              const SizedBox(
                                                height: 7,
                                              ),
                                              const Text('₹2500/-',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black)),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                children: [
                                                  SizedBox(
                                                      width: 130,
                                                      height: 50,
                                                      child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25),
                                                                  side: const BorderSide(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          189,
                                                                          249,
                                                                          191))),
                                                              backgroundColor:
                                                                  Colors.white),
                                                          onPressed: () {
                                                            // Navigator.push(
                                                            //     context,
                                                            //     MaterialPageRoute(
                                                            //       builder: (context) => DefaultHome(),
                                                            //     ));

                                                            setState(() {
                                                              buttonIndex = -1;
                                                              Navigator.pop(
                                                                  context);
                                                            });
                                                          },
                                                          child: const Text(
                                                            'Pay Later',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: Colors
                                                                    .black),
                                                          ))),
                                                  const SizedBox(
                                                    width: 70,
                                                  ),
                                                  SizedBox(
                                                      width: 130,
                                                      height: 50,
                                                      child: ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                              shadowColor:
                                                                  const Color
                                                                          .fromARGB(
                                                                      255,
                                                                      33,
                                                                      215,
                                                                      39),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              25)),
                                                              backgroundColor:
                                                                  const Color
                                                                          .fromARGB(
                                                                      255,
                                                                      50,
                                                                      228,
                                                                      56)),
                                                          onPressed: () {
                                                            Navigator.pop(
                                                                context);
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        NvigationBar(),
                                                              ),
                                                            );
                                                          },
                                                          child: const Text(
                                                            'Pay Now',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          )))
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                });
                              },
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      // ignore: unnecessary_null_comparison
                                      color: buttonIndex == index
                                          ? Colors.green
                                          : Colors.white),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 7,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: colors1[index],
                                          image: DecorationImage(
                                              image: AssetImage(image[index])),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(course[index],
                                        style: const TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black))
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const SizedBox(
                              height: 10,
                            );
                          },
                          itemCount: 4)),
                ],
              ),
            ],
          ),
        ],
      )),
    );
  }
}
