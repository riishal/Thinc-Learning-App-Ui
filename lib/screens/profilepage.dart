import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'Course',
      'Badge',
      'Subscription',
      'Batch',
    ];
    List<String> subtitle = ['NATA JEE 2', 'X', 'NATA(1YR),JEE(2YR)', 'X'];
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 249, 240, 1),
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit_note_outlined,
              size: 31,
              color: Colors.black,
            ))
      ], elevation: 0, backgroundColor: Color.fromRGBO(248, 249, 240, 1)),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Text(
              'My Profile',
              style: GoogleFonts.plusJakartaSans(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Stack(children: [
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              Positioned(
                  right: 3,
                  top: 15,
                  child: GestureDetector(
                    child: CircleAvatar(
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.camera_alt_outlined,
                              size: 15, color: Color.fromRGBO(31, 192, 214, 1)),
                          onPressed: () {},
                        ),
                      ),
                      radius: 15,
                      backgroundColor: Color.fromRGBO(222, 245, 246, 1),
                    ),
                  ))
            ]),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jhon Doe',
              style: GoogleFonts.plusJakartaSans(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.93,
              height: size.height * 0.45,
              child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 21,
                                  color: Color.fromRGBO(0, 0, 0, 0.06),
                                  offset: Offset(0, 4))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              child: ListTile(
                                title: Text(
                                  title[index],
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Color.fromRGBO(80, 85, 92, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ),
                                subtitle: Text(
                                  subtitle[index],
                                  style: GoogleFonts.plusJakartaSans(
                                    color: Color.fromRGBO(38, 50, 56, 1),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 4),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: size.height * 0.39,
                height: size.width * 0.11,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shadowColor: const Color.fromARGB(255, 50, 228, 56),
                        backgroundColor: const Color.fromARGB(255, 50, 228, 56),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const Screen2(),
                      //     ));
                    },
                    child: Text(
                      'Add Subscription Now',
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(38, 50, 56, 1),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ))),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ),
    );
  }
}
