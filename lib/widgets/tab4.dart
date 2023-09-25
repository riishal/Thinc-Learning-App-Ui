import 'package:flutter/material.dart';
import 'package:thinc_app/default_home.dart';

int buttonIndex = -1;

class Tab4 extends StatefulWidget {
  const Tab4({super.key});

  @override
  State<Tab4> createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors1 = [
      const Color.fromRGBO(234, 255, 235, 1),
      const Color.fromRGBO(244, 220, 184, 1),
      const Color.fromRGBO(184, 237, 244, 1),

      // Add more colors as needed
    ];
    List<MaterialColor> color2 = [Colors.green, Colors.orange, Colors.cyan];

    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(
        height: 20,
      ),
      Align(
          alignment: Alignment.center,
          child: Text(
            'Chapter 1',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
          )),
      SizedBox(
        height: 5,
      ),
      Align(
          alignment: Alignment.center,
          child: Text(
            'Course introduction',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          )),
      SizedBox(
        height: 20,
      ),
      Container(
        height: size.height * 0.59,
        width: size.width * 0.95,
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Exercise',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              )),
          SizedBox(
            height: 5,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                'Chose your level',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height * 0.45,
            width: size.width * 0.90,
            child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(184, 244, 187, 0.42)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 54,
                                color: Color.fromRGBO(195, 199, 166, 0.2))
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(7)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            buttonIndex = index;
                            setState(() {
                              print(buttonIndex);
                            });
                          },
                          child: Container(
                            height: 80,
                            width: double.infinity,
                            child: Center(
                              child: ListTile(
                                  title: const Text('Test 1',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600)),
                                  subtitle: const Text('Lorem ipsum',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300)),
                                  trailing: SizedBox(
                                    height: 30,
                                    width: 70,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            shadowColor: const Color.fromARGB(
                                                255, 33, 215, 39),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 50, 228, 56)),
                                        onPressed: () {},
                                        child: const Text(
                                          'Start',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                              fontSize: 12),
                                        )),
                                  ),
                                  leading: Container(
                                      height: 65,
                                      width: 70,
                                      child: Center(
                                          child: Icon(
                                        Icons.article_outlined,
                                        color: color2[index],
                                        size: 33,
                                      )),
                                      decoration: BoxDecoration(
                                          color: colors1[index],
                                          borderRadius:
                                              BorderRadius.circular(8)))),
                            ),
                          ),
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 5,
                    ),
                itemCount: 3),
          )
        ]),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
      )
    ]));
  }
}
