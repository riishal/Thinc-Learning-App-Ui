import 'package:flutter/material.dart';

class Tab4_2 extends StatelessWidget {
  const Tab4_2({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new_sharp)),
            ],
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
            height: 10,
          ),
          Container(
            height: size.height * 0.59,
            width: size.width * 0.92,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Q1. Porem ipsum dolor sit amet, consectetur\nadipiscing elit. Nunodio mattis?',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Answer here',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none))),
                      height: size.height * 0.29,
                      width: size.width * 0.88,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(240, 240, 240, 1),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(84, 244, 187, 0.42)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: SizedBox(
                                height: size.height * 0.065,
                                width: size.width * 0.47,
                                child: Row(children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 39,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            184, 237, 244, 1),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Icon(Icons.link,
                                        size: 26, color: Colors.cyan),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    'Upload Document',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromRGBO(84, 244, 187, 0.42)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: SizedBox(
                                height: size.height * 0.065,
                                width: size.width * 0.31,
                                child: Row(children: [
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 39,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 247, 235, 218),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Icon(Icons.favorite_border,
                                        color: Colors.orange),
                                  ),
                                  const SizedBox(
                                    width: 7,
                                  ),
                                  const Text(
                                    'Camera',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              width: size.height * 0.38,
              height: size.width * 0.12,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromARGB(255, 50, 228, 56),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: const Color.fromARGB(255, 50, 228, 56)),
                  onPressed: () {},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ))),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
