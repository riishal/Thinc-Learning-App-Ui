import 'package:flutter/material.dart';

class Tab3 extends StatelessWidget {
  const Tab3({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> name1 = [
      'Ask a doubt',
      'Flag',
      'Book mark',
    ];
    List<IconData> icone1 = [
      Icons.question_answer_outlined,
      Icons.flag_outlined,
      Icons.save_outlined
    ];
    var size = MediaQuery.of(context).size;
    List<MaterialColor> color2 = [
      Colors.green,
      Colors.orange,
      Colors.deepPurple
    ];
    final List<Color> colors1 = [
      const Color.fromARGB(255, 212, 246, 213),
      const Color.fromARGB(255, 253, 239, 219),
      const Color.fromARGB(255, 232, 232, 255),
    ];

    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Concepts',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.40,
          width: size.width * 0.92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Examples',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.40,
          width: size.width * 0.92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Formulas',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: size.height * 0.40,
          width: size.width * 0.92,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: size.width * 0.92,
          height: size.height * 0.095,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 5),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.32,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Center(
                          child: Center(
                        child: Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Container(
                                    height: 40,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: colors1[index],
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Icon(
                                      icone1[index],
                                      color: color2[index],
                                    ))),
                            const SizedBox(
                              width: 7,
                            ),
                            Expanded(
                                flex: 3,
                                child: Text(
                                  name1[index],
                                  style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      )),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                'Chapter 1',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        Container(
          height: size.height * 0.45,
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
                        child: Container(
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
                                trailing: const CircleAvatar(
                                  radius: 15,
                                  backgroundColor:
                                      Color.fromARGB(255, 42, 230, 49),
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 17,
                                    color: Colors.black,
                                  ),
                                ),
                                leading: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/nata2.png')),
                                        borderRadius:
                                            BorderRadius.circular(0)))),
                          ),
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: 3),
        )
      ]),
    );
  }
}
