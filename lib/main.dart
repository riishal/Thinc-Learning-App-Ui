import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thinc_app/Api/firebase_api.dart';
import 'package:thinc_app/Api/notification.dart';
import 'package:thinc_app/homepage.dart';
import 'package:thinc_app/nata_page.dart';
import 'package:thinc_app/profilepage.dart';
import 'package:thinc_app/widgets/navigationBar.dart';
import 'package:thinc_app/screens/splash_screen.dart';
import 'package:thinc_app/widgets/tab2.dart';
import 'package:thinc_app/widgets/tab3.dart';
import 'package:thinc_app/test.dart';
import 'package:thinc_app/widgets/tab4.dart';
import 'package:thinc_app/widgets/tab4_2.dart';

import 'default_home.dart';

final navigatorKey = GlobalKey<NavigatorState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      theme: ThemeData(primarySwatch: Colors.green),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: {NotificationScreen.rout: (context) => NotificationScreen()},
    );
  }
}
