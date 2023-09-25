import 'package:flutter/material.dart';
import 'package:thinc_app/screens/screen3.dart';
import 'package:thinc_app/screens/Screen5.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    String? selectedItem;
    var size = MediaQuery.of(context).size;

    final images = [
      'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1280px-Flag_of_India.svg.png',
      'https://img.freepik.com/premium-vector/united-states-america-flag_183326-49.jpg',
      'https://i.guim.co.uk/img/media/4e2060079efbcf4255faa90d5d25c41d7933356a/0_0_5000_3333/master/5000.jpg?width=620&quality=85&auto=format&fit=max&s=8f4650d41922eaad357a40049fcc71cf',
      'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/800px-Flag_of_Brazil.svg.png',
    ];

    List<String> name = [
      'Fullname*',
      'Email*',
      'Phone number*',
      'Location',
      'Class*'
    ];
    List<String> class1 = [
      '8th',
      '9th',
      '10th',
      '+1',
      '+2',
      'Degree',
      'Diploma',
      'Pg'
    ];
    List<String> location = [
      'location 1',
      'location 2',
      'location 3',
      'location 4',
      'location 5',
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  'Create a new account',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text('Ready to get started? Register as',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                const Text('a new user!',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                const SizedBox(
                  height: 23,
                ),
                SizedBox(
                  height: size.height * 0.077,
                  width: size.width * 0.77,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: name[0],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13)),
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.077,
                  width: size.width * 0.77,
                  child: TextFormField(
                      decoration: InputDecoration(
                    hintText: name[1],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13)),
                  )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: size.height * 0.077,
                  width: size.width * 0.77,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 183, 182, 182)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 61,
                        child: DropdownButtonFormField(
                          icon: Icon(Icons.keyboard_arrow_down),
                          hint: Image.network(images[0]),
                          value: selectedItem,
                          items: images.map((item) {
                            return DropdownMenuItem(
                                value: item,
                                child: Image.network(
                                  item,
                                  fit: BoxFit.fill,
                                ));
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              selectedItem = value;
                            });
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const VerticalDivider(
                        indent: 4,
                        endIndent: 4,
                        color: Color.fromARGB(255, 145, 144, 144),
                      ),
                      SizedBox(
                          width: 180,
                          child: TextFormField(
                            // enabled: true,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              hintText: 'Phone',
                              hintStyle: TextStyle(fontSize: 14),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.077,
                  width: size.width * 0.77,
                  child: DropdownButtonFormField(
                    icon: Icon(Icons.keyboard_arrow_down),
                    hint: Text(name[3]),
                    value: selectedItem,
                    items: location.map((item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.077,
                  width: size.width * 0.77,
                  child: DropdownButtonFormField(
                    iconEnabledColor: Colors.white,
                    hint: Text(name[4]),
                    value: selectedItem,
                    items: class1.map((item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13))),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: size.height * 0.39,
                    height: size.width * 0.11,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: const Color.fromARGB(255, 33, 215, 39),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor:
                                const Color.fromARGB(255, 50, 228, 56)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Screen5(),
                              ));
                        },
                        child: const Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ))),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
