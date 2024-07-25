import 'package:flutter/material.dart';

class Subjects_list extends StatefulWidget {
  const Subjects_list({Key? key}) : super(key: key);
  static String routeName = 'Subjects';

  @override
  _Subjects_listState createState() => _Subjects_listState();
}

class _Subjects_listState extends State<Subjects_list> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0)).animate(_animationController);
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
          title: Text('Subjects'),
        ),
        body: ListView(
          children: [
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Filipino',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- PINEDA, JOSE MARIO B.',
              schedule: [
                'Wednesday: 03:30 PM-05:00 PM',
                'Thursday: 01:00 PM-02:30 PM',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'English',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- MANLANGIT, ERLENE T.',
              schedule: [
                'Wednesday: 08:30 AM-10:00 AM',
                'Thursday: 07:00 AM-08:30 AM',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Mathematics',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- TORREALBA, HAVEN BRIELLE D.',
              schedule: [
                'To be announced...',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Science',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- LINDO, MAGDALENE LUCY T.',
              schedule: [
                'To be announced...',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Araling Panlipunan',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- BALANGAO, DYLAN KATELYN M.',
              schedule: [
                'Monday: 07:00 AM-8:30 AM',
                'Friday: 07:00 AM-08:30 AM',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'MAPEH',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- BAUTISTA, ENRIQUE L.',
              schedule: [
                'To be announced...',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Technology and Livelyhood Education',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- ALONZO, VINCENTE R.',
              schedule: [
                'To be announced...',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Edukasyon sa Pagpapakatao',
              units: 10,
              room: 'TBA / SAN JUAN',
              professor: '- DELA CRUZ, CLARISSA O.',
              schedule: [
                'To be announced...',
              ],
            ),
            SubjectCard(
              imagePath: 'assets/img/splash.png',
              subjectName: 'Computer',
              units: 10,
              room: 'Computer Laboratory 1',
              professor: '- NAVARRO, LOURDES C.',
              schedule: [
                'To be announced...',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

