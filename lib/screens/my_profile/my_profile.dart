import 'package:student_portal/constants.dart';
import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: constraints.maxHeight * 0.3,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(kDefaultPadding * 1.75),
                        bottomRight: Radius.circular(kDefaultPadding * 1.75),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: constraints.maxHeight * 0.1,
                          backgroundColor: kSecondaryColor,
                          backgroundImage: 
                            AssetImage('assets/img/profile.jpg'),
                        ),
                        kWidthsizedBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mikhaela Janna Lim',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            Text(
                              'Grade 10 - BINI',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(fontSize: 14.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  sizedBox,
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding / 2),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileDetailRow(
                              title: 'Student Number',
                              value: '15-12345',
                            ),
                            ProfileDetailRow(
                              title: 'Academic Year',
                              value: '2023-2024',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ProfileDetailRow(
                              title: 'Adviser',
                              value: 'Dylan Katelyn M. Balangao',
                            ),
                            ProfileDetailRow(
                              title: 'Birthday',
                              value: 'November 8, 2003',
                            ),
                          ],
                        ),
                        ProfileDetailColumn(
                          title: 'E-mail',
                          value: 'example@email.com',
                        ),
                        ProfileDetailColumn(
                          title: 'Mother\'s Name',
                          value: 'No Data Available',
                        ),
                        ProfileDetailColumn(
                          title: 'Father\'s Name',
                          value: 'No Data Available',
                        ),
                        ProfileDetailColumn(
                          title: 'Mobile Number',
                          value: '091234567899',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({Key? key, required this.title, required this.value}) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: kTextLightColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
            ),
            kHalfSizedBox,
            Text(
              value,
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: kTextBlackColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0,
                  ),
            ),
            kHalfSizedBox,
            Divider(thickness: 1.0),
          ],
        ),
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn({Key? key, required this.title, required this.value}) : super(key: key);
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: kTextLightColor,
                  fontSize: 15.0,
                ),
          ),
          kHalfSizedBox,
          Text(
            value,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: kTextBlackColor,
                  fontSize: 15.0,
                ),
          ),
          kHalfSizedBox,
          Divider(thickness: 1.0),
        ],
      ),
    );
  }
}
