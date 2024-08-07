import 'package:student_portal/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultButton extends StatelessWidget {
final VoidCallback onPress;
final String title;
final IconData iconData;

  const DefaultButton({super.key, required this.onPress, required this.title, required this.iconData});
 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding
        ),
        padding: EdgeInsets.only(right: kDefaultPadding),
        width: double.infinity,
        height: 68.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kSecondaryColor, kPrimaryColor],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp
          ),
          borderRadius: BorderRadius.circular(kDefaultPadding)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(title, 
            style: GoogleFonts.poppins(fontWeight: FontWeight.w300, fontSize: 18.0),
            ),
            Spacer(),
            Icon(iconData,
            size: 30.0,
            color: kOtherColor,)
          ],),
      ),
    );
  }
}