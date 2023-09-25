import 'package:flutter/material.dart';

class MenuItem {
  final String text;
  final Widget container;
  MenuItem(
    this.text,
    this.container,
  );
}

class MenuItems {
  static List<MenuItem> itemsFirst = [
    notifications,
    myProfile,
    myTHiNCPlus,
    m4,
    m5,
    m6,
    m7,
    m8,
    m9,
    m10,
    m11
  ];
  static MenuItem notifications = MenuItem(
      'Notifications',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.alarm,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem myProfile = MenuItem(
      'My Profile',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.account_circle_outlined,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem myTHiNCPlus = MenuItem(
      'My THiNC Plus',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.star_border,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m4 = MenuItem(
      'Connect To My Mentor',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.message,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m5 = MenuItem(
      'My Assignments',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.article_outlined,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m6 = MenuItem(
      'My Reports',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.broken_image_outlined,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m7 = MenuItem(
      'My Downloads',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.download_sharp,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m8 = MenuItem(
      'Invite My friends',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.share_outlined,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m9 = MenuItem(
      'Send Feedback',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.search,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m10 = MenuItem(
      'Contact Us',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.connect_without_contact,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
  static MenuItem m11 = MenuItem(
      'Settings',
      Container(
        height: 28,
        width: 32,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 212, 246, 213),
            borderRadius: BorderRadius.circular(8)),
        child: const Icon(
          Icons.settings_outlined,
          size: 18,
          color: Color.fromARGB(255, 84, 179, 88),
        ),
      ));
}
