import 'package:flutter/material.dart';

import 'package:thinc_app/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: size.height * 0.53,
            child: Center(
              child: Image.asset(
                'assets/images/splash.png',
                scale: 1.5,
              ),
            ),
          ),
          Column(
            children: const [
              Text(
                'Hey! Welcome',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                ' Access Your Account or Explore ',
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
              ),
              Text('as a Guest',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: size.height * 0.39,
              height: size.width * 0.11,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromARGB(255, 50, 228, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 50, 228, 56)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Screen3(),
                        ));
                  },
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ))),
          const SizedBox(
            height: 15,
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
                  onPressed: () {},
                  child: const Text(
                    'Continue as Guest',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ))),
        ],
      )),
    );
  }
}
