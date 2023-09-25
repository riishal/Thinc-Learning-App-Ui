import 'package:flutter/material.dart';
import 'package:thinc_app/nata_page.dart';
import 'package:thinc_app/screens/Screen4.dart';
import 'package:thinc_app/screens/screen6.dart';
import 'package:thinc_app/widgets/menu_items.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex = 0;
  List<String> name1 = [
    'Tips',
    'Exam N..',
    'Quiz',
  ];
  List<String> image1 = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
  ];
  final List<Color> colors1 = [
    const Color.fromARGB(255, 212, 246, 213),
    const Color.fromARGB(255, 253, 239, 219),
    const Color.fromARGB(255, 213, 245, 253),

    // Add more colors as needed
  ];
  List<MaterialColor> color2 = [Colors.green, Colors.orange, Colors.cyan];
  List<String> items = ['NATA', 'JEE2', 'NIFT', 'DRAW'];
  String? selecteditem = 'NATA';

  List<String> maskGroup = [
    'assets/images/Mask group.png',
    'assets/images/Mask group1.png',
    'assets/images/Mask group.png',
  ];
  List<String> mgroupname = [
    'Mathematics',
    'Chemistry',
    'Mathematics',
  ];
  List<String> frame = [
    'assets/images/Frame1.png',
    'assets/images/Frame2.png',
    'assets/images/Frame3.png',
  ];
  List<String> framename = [
    'Pvs Qns',
    'Custom test',
    'Daily test',
  ];
  List<String> livetest = [
    'National\nLevel',
    'State\nLevel',
    'State\n Level',
  ];
  List<String> menutext = [
    'Notifications',
    'My Profile',
    'My THiNC Plus',
    'Connect To My Mentor',
    'My Assignments',
    'My Reports',
    'My Downloads',
    'Invite My friends',
    'Send Feedback',
    'Contact Us',
    'Settings',
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 241, 240),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: size.height * 0.045,
                    width: size.width * 0.256,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        icon: const Icon(Icons.keyboard_arrow_down),
                        hint: Text(items[0]),
                        value: selecteditem,
                        items: items.map((item) {
                          return DropdownMenuItem(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
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
                  const Expanded(child: SizedBox()),
                  Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/profilemenu.png')),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: PopupMenuButton<MenuItem>(
                      icon: const SizedBox(),
                      itemBuilder: (context) =>
                          [...MenuItems.itemsFirst.map(builditem).toList()],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Hello Tom!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: size.width * 0.93,
                height: size.height * 0.095,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(13),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.height * 0.35,
                        childAspectRatio: 0.38,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: colors1[index],
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                child: Center(
                                    child: Center(
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Image.asset(image1[index])),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        name1[index],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: color2[index],
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ))),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Study',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: size.height * 0.196,
                  width: size.width * 0.99,
                  child: GridView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: size.height * 0.35,
                        childAspectRatio: 0.98,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Colors.green,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const NataPage(),
                                  ));
                            },
                            child: Container(
                                child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    mgroupname[index],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Text(
                                    'Lorem ipsum',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Image.asset(
                                        maskGroup[index],
                                        scale: 1.38,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )),
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Practice my exams',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                  width: size.width * 0.94,
                  height: size.height * 0.19,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1.1,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Colors.green,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                    child: Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: colors1[index],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Image.asset(frame[index]),
                                )),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  framename[index],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: const [
                  Icon(
                    Icons.circle,
                    size: 15,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Live classes',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: size.height * 0.28,
                  width: size.width * 0.99,
                  child: GridView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 500,
                            childAspectRatio: 1,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                              'assets/images/maths1.png',
                            )),
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          shadowColor: Colors.green,
                          child: InkWell(
                            onTap: () {},
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Mathematics',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              '20 mins',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ]),
                                    ),
                                    // const SizedBox(
                                    //   width: 40,
                                    // ),
                                    const Icon(
                                      Icons.play_circle_fill_outlined,
                                      size: 28,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Live test',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: size.height * 0.098,
                width: size.width * 0.99,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(13)),
                child: SizedBox(
                  child: GridView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisExtent: 140,
                        maxCrossAxisExtent: size.height * 0.35,
                        childAspectRatio: 0.38,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 8),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                child: Center(
                                    child: Center(
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      flex: 4,
                                      child: Text(
                                        livetest[index],
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500),
                                      )),
                                  const Expanded(
                                      flex: 4,
                                      child: Icon(
                                        Icons.play_circle_outline_rounded,
                                        color:
                                            Color.fromARGB(255, 106, 245, 111),
                                        size: 35,
                                      )),
                                ],
                              ),
                            ))),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Suggested courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: size.width * 0.93,
                      height: size.height * 0.08,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 7,
                          ),
                          Container(
                            height: 40,
                            width: 50,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 239, 219),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/oneyear.png')),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('One Year B.Arch Weekend Batch',
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Upcoming events',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width * 0.93,
                height: size.height * 0.24,
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                child: ListTile(
                                    leading: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 224, 246, 224),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: const Center(
                                          child: Text(
                                        'Jun\n 14',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Color.fromARGB(
                                                255, 49, 94, 50)),
                                      )),
                                    ),
                                    title: const Text('Webinar'),
                                    subtitle: const Text('Lorem ipsum'),
                                    trailing: SizedBox(
                                      height: 30,
                                      width: 70,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              shadowColor: const Color.fromARGB(
                                                  255, 33, 215, 39),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 50, 228, 56)),
                                          onPressed: () {},
                                          child: const Text(
                                            'Join',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12),
                                          )),
                                    )),
                              ),
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                    itemCount: 2),
              )
            ],
          ),
        )),
      ),
    );
  }

  PopupMenuItem<MenuItem> builditem(MenuItem item) => PopupMenuItem(
          child: Row(
        children: [
          item.container,
          const SizedBox(
            width: 10,
          ),
          Text(
            item.text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ],
      ));
}
