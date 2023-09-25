import 'package:flutter/material.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key});

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  String? selecteditem = 'Chapter 1';
  List<String> chapters = [
    'Chapter 1',
    'Chapter 2',
    'Chapter 3',
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/nata1.png')),
                  borderRadius: BorderRadius.circular(15)),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: SizedBox(
                    height: size.height * 0.25,
                    width: size.width * 0.92,
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 209, 204, 204),
                                borderRadius: BorderRadius.circular(10)),
                            height: 30,
                            width: 40,
                            child: const Icon(
                              Icons.save_outlined,
                              color: Color.fromARGB(255, 60, 59, 59),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow_rounded),
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          SizedBox(
                            width: 10,
                          ),
                          Flexible(
                            child: Text(
                              'Introduction',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      )
                    ]),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7)),
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
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Expanded(
                  child: Text(
                    'Chapter 1',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: size.height * 0.045,
                  width: size.width * 0.286,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      hint: Text(chapters[0]),
                      value: selecteditem,
                      items: chapters.map((item) {
                        return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ));
                      }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selecteditem = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
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
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        child: const Center(
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Color.fromARGB(
                                                255, 42, 230, 49),
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
          ],
        ),
      ),
    );
  }
}
