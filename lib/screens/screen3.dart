import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';
import 'package:thinc_app/screens/screen2.dart';
import 'package:thinc_app/screens/Screen4.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    final defaultpintheme = PinTheme(
      width: 60,
      height: 56,
      textStyle: const TextStyle(fontSize: 22, color: Colors.black),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 212, 211, 211))),
    );
    String? selectedItem;
    var size = MediaQuery.of(context).size;
    String dropdownvalue =
        'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1280px-Flag_of_India.svg.png';

    final images = [
      'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1280px-Flag_of_India.svg.png',
      'https://img.freepik.com/premium-vector/united-states-america-flag_183326-49.jpg',
      'https://i.guim.co.uk/img/media/4e2060079efbcf4255faa90d5d25c41d7933356a/0_0_5000_3333/master/5000.jpg?width=620&quality=85&auto=format&fit=max&s=8f4650d41922eaad357a40049fcc71cf',
      'https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/800px-Flag_of_Brazil.svg.png',
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
                    builder: (context) => const Screen2(),
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
                  'Welcome back',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Enter your mobile number to get',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),
                ),
                const Text('started',
                    style:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: size.height * 0.068,
                  width: size.width * 0.77,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 194, 193, 193)),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 7,
                      ),
                      SizedBox(
                        width: 70,
                        height: double.infinity,
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
                        indent: 3,
                        endIndent: 3,
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
                    width: size.height * 0.39,
                    height: size.width * 0.11,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            backgroundColor:
                                const Color.fromARGB(255, 50, 228, 56)),
                        onPressed: () {
                          setState(() {
                            setVisibility();
                          });
                        },
                        child: const Text(
                          'Request OTP',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ))),
                Visibility(
                  visible: visibility,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        'Enter OTP',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('We’ve send a verification code to',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 15)),
                      const Text('your number',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 15)),
                      const SizedBox(
                        height: 20,
                      ),
                      Pinput(
                        length: 4,
                        defaultPinTheme: defaultpintheme,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                          width: size.height * 0.39,
                          height: size.width * 0.11,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)),
                                  backgroundColor:
                                      const Color.fromARGB(255, 50, 228, 56)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Screen4(),
                                    ));
                              },
                              child: const Text(
                                'Sign up',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ))),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Don’t have an account?',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text('Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }

  setVisibility() {
    visibility = !visibility;
  }
}
