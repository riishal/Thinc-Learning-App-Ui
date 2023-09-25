import 'package:flutter/material.dart';
import 'package:thinc_app/default_home.dart';
import 'package:thinc_app/screens/screen6.dart';

int buttonIndex = -1;

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<String> asset = [
      'assets/images/Architecture.png',
      'assets/images/Design1.png',
      'assets/images/Doodling.png',
      'assets/images/Drawing.png'
    ];
    List<String> text1 = ['Architecture', 'Design', 'Doodling', 'Drawing'];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 237),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          const Center(
              child: Text(
            'THINC and prepare for',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: size.height * 0.57,
            width: size.width * 0.90,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      buttonIndex = index;
                      setState(() {});

                      print(buttonIndex);
                    },
                    child: Container(
                      height: size.height * 0.13,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            // ignore: unnecessary_null_comparison
                            color: buttonIndex == index
                                ? Colors.green
                                : Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(children: [
                        Positioned(
                          left: 40,
                          top: 37,
                          child: Text(
                            text1[index],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Positioned(
                            right: 12,
                            bottom: 0,
                            child: Image.asset(
                              asset[index],
                              scale: 1.3,
                            ))
                      ]),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 12,
                  );
                },
                itemCount: 4),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: size.height * 0.39,
              height: size.width * 0.11,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromARGB(255, 33, 215, 39),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      backgroundColor: const Color.fromARGB(255, 50, 228, 56)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen6(),
                        ));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w300),
                  ))),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              width: size.height * 0.39,
              height: size.width * 0.11,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(
                              color: Color.fromARGB(255, 189, 249, 191))),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DefaultHome(),
                        ));
                  },
                  child: const Text(
                    'Continue without purchase',
                    style: TextStyle(color: Colors.black),
                  ))),
        ],
      )),
    );
  }
}
