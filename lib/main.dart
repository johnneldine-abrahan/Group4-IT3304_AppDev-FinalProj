import 'package:student_portal/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:student_portal/constants.dart';
import 'package:student_portal/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SJIT - Student Portal',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          appBarTheme: AppBarTheme(
            color: kPrimaryColor,
            titleTextStyle: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: kTextWhiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            iconTheme: IconThemeData(color: kTextWhiteColor),
            elevation: 0,
          ),
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply()
              .copyWith(
                bodyLarge: GoogleFonts.poppins(
                    color: kTextWhiteColor,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold),
                bodyMedium: GoogleFonts.poppins(
                    color: kTextWhiteColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w300),
                labelMedium: GoogleFonts.poppins(
                    color: kTextWhiteColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w300),
                labelLarge: GoogleFonts.poppins(color: kTextWhiteColor),
                headlineMedium: GoogleFonts.poppins(color: kTextWhiteColor),
                titleMedium: GoogleFonts.poppins(
                    color: kTextBlackColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                labelSmall:
                    GoogleFonts.poppins(color: kTextBlackColor, fontSize: 12),
                titleLarge: GoogleFonts.poppins(
                    color: kTextBlackColor, fontWeight: FontWeight.w500),
              ),
          inputDecorationTheme: InputDecorationTheme(
              labelStyle: GoogleFonts.poppins(
                  fontSize: 15.0, color: kTextLightColor, height: 0.5),
              hintStyle: GoogleFonts.poppins(
                  fontSize: 16.0, color: kTextBlackColor, height: 0.5),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor, width: 0.7),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: kTextLightColor),
              ),
              disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kTextLightColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: kErrorBorderColor, width: 1.2)),
              focusedErrorBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: kErrorBorderColor, width: 1.2)))),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
