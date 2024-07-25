import 'package:student_portal/constants.dart';
import 'package:student_portal/screens/announcements/announcements.dart';
import 'package:student_portal/screens/grades/grades.dart';
import 'package:student_portal/screens/home_screen/widgets/student_data.dart';
import 'package:student_portal/screens/liabilities/liabilities.dart';
import 'package:student_portal/screens/my_profile/my_profile.dart';
import 'package:student_portal/screens/payments/payments.dart';
import 'package:student_portal/screens/subjects/subjects.dart';
import 'package:student_portal/screens/view_all_grades/view_all_grades.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.5,
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StudentName(
                          studentName: 'Mikhaela Janna',
                        ),
                        kHalfSizedBox,
                        StudentClass(studentClass: 'Grade 10 - BINI'),
                        kHalfSizedBox,
                        StudentYear(studentYear: 'AY: 2023-2024'),
                      ],
                    ),
                    kHalfSizedBox,
                    StudentPicture(
                        picAddress: 'assets/img/profile.jpg',
                        onPress: () {
                          Navigator.pushNamed(context, MyProfileScreen.routeName);
                        }
                      ),
                  ],
                ),
                sizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    StudentDataCard(
                      onPress: () {
                        Navigator.pushNamed(context, Payments.routeName);
                      },
                      title: 'Amount Due',
                      value: '₱2,000.00',
                    ),
                    StudentDataCard(
                      onPress: () {
                        Navigator.pushNamed(context, Subjects_list.routeName);
                      },
                      title: 'Enrollment Status',
                      value: 'ENROLLED',
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kOtherColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 1.25),
                    topRight: Radius.circular(kDefaultPadding * 1.25),
                  ),
                ),
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, Subjects_list.routeName);
                          },
                          icon: 'assets/icon/subjects.svg',
                          title: 'Subjects',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, Announcements.routeName);
                          },
                          icon: 'assets/icon/announcements.svg',
                          title: 'Announcements',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, Grades.routeName);
                          },
                          icon: 'assets/icon/grades.svg',
                          title: 'Grades',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, View_All_Grades.routeName);
                          },
                          icon: 'assets/icon/all-grades.svg',
                          title: 'View All Grades',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, Liabilities.routeName);
                          },
                          icon: 'assets/icon/liabilities.svg',
                          title: 'Liabilities',
                        ),
                        HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, Payments.routeName);
                          },
                          icon: 'assets/icon/payments.svg',
                          title: 'Payments'
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          margin: EdgeInsets.only(top: kDefaultPadding / 2),
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(kDefaultPadding / 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
                height: 40.0,
                width: 40.0,
                color: kOtherColor,
              ),
              Text(
                title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(
                height: kDefaultPadding / 3,
              ),
            ],
          )),
    );
  }
}
