import 'package:flutter/material.dart';

class Announcements extends StatefulWidget {
  const Announcements({Key? key}) : super(key: key);
  static String routeName = 'Announcements';

  @override
  _AnnouncementsState createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
 @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Announcements'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  AnnouncementCard(title: 'New Schedule', description: 'The new schedule for the 4th quarter is now available.'),
                  AnnouncementCard(title: 'Holiday Break', description: 'The school will be closed from April 10 to 17 for the holiday break.'),
                  AnnouncementCard(title: 'Parent-Teacher Conference', description: 'The parent-teacher conference will be held on April 20.'),
                  AnnouncementCard(title: 'New Policy', description: 'The school has implemented a new policy for student attendance.'),
                  AnnouncementCard(title: 'Club Registration', description: 'Registration for school clubs is now open.'),
                  AnnouncementCard(title: 'School Event', description: 'The school will be hosting a cultural event on April 25.'),
                  AnnouncementCard(title: 'Deadline Reminder', description: 'The deadline for submitting projects is on April 30.'),
                  AnnouncementCard(title: 'New Resource', description: 'A new online resource is now available for students.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnnouncementCard extends StatelessWidget {
  final String title;
  final String description;

  const AnnouncementCard({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);
