import 'package:student_portal/constants.dart';
import 'package:student_portal/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    });

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
          borderRadius: BorderRadius.circular(140.0), // half of the image height/width
          child: Image.asset('assets/img/splash.png', height: 250.0, width: 250.0),
        ),
            SizedBox(height: 20.0),
            Text('San Juan Institute',
                style: GoogleFonts.sourceSansPro(
                  color: kTextWhiteColor,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
            Text('of Technology',
                style: GoogleFonts.sourceSansPro(
                  color: kTextWhiteColor,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
