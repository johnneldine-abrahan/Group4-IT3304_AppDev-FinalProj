import 'package:student_portal/constants.dart';
import 'package:student_portal/directory/custom_buttons.dart';
import 'package:student_portal/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Image
                  Image.asset(
                    'assets/img/log-in.png',
                    height: 180.0,
                    width: 180.0,
                  ),
                  SizedBox(
                    height: kDefaultPadding / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi, ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontWeight: FontWeight.w200,
                            ),
                      ),
                      Text('Student!',
                          style: Theme.of(context).textTheme.bodyLarge)
                    ],
                  ),
                  SizedBox(
                    height: kDefaultPadding / 6,
                  ),
                  Text('Sign in to continue',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              )),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 1.80),
                  topRight: Radius.circular(kDefaultPadding * 1.80),
                ),
                color: kOtherColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          sizedBox,
                          buildStudentIDField(),
                          sizedBox,
                          buildPasswordField(),
                          sizedBox,
                          DefaultButton(
                            onPress: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined,
                          ),
                          sizedBox,
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              'Forgot Password',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }

  TextFormField buildStudentIDField() {
  return TextFormField(
    textAlign: TextAlign.start,
    keyboardType: TextInputType.number,
    style: GoogleFonts.poppins(
      color: kTextBlackColor,
      fontSize: 17.0,
      fontWeight: FontWeight.w300,
    ),
    decoration: InputDecoration(
      labelText: 'Student ID',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      isDense: true,
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return 'Student ID is required';
      }
      return null;
    },
  );
}
  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: GoogleFonts.poppins(
        color: kTextBlackColor,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
          labelText: 'Password',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
            icon: Icon(
              _passwordVisible
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_off_outlined,
            ),
            iconSize: kDefaultPadding,
          )),
      validator: (value) {
        if (value!.length < 6) {
          return 'Must be more than 6 characters';
        }
      },
    );
  }
}
