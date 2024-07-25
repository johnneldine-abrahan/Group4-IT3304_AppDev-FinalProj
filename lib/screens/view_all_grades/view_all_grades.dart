import 'package:flutter/material.dart';

class View_All_Grades extends StatefulWidget {
  const View_All_Grades({Key? key}) : super(key: key);
  static String routeName = 'AllGrades';

  @override
  _View_All_GradesState createState() => _View_All_GradesState();
}

class _View_All_GradesState extends State<View_All_Grades> with TickerProviderStateMixin {
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
          title: Text('All Grades'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            Center(
              child: Text(
                '4th Quarter (AY: 2023-2024)',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 16.0),
            GradeCard(subject: 'Filipino', teacher: 'PINEDA, JOSE MARIO B.', grade: 88),
            GradeCard(subject: 'English', teacher: 'MANLANGIT, ERLENE T.', grade: 82),
            GradeCard(subject: 'Mathematics', teacher: 'TORREALBA, HAVEN BRIELLE D.', grade: 78),
            GradeCard(subject: 'Science', teacher: 'LINDO, MAGDALENE LUCY T.', grade: 82),
            GradeCard(subject: 'Araling Panlipunan', teacher: 'BALANGAO, DYLAN KATELYN M.', grade: 86),
            GradeCard(subject: 'MAPEH', teacher: 'BAUTISTA, ENRIQUE L.', grade: 90),
            GradeCard(subject: 'Technology and Livelihood Education', teacher: 'ALONZO, VINCENTE R.', grade: 94),
            GradeCard(subject: 'Edukasyon sa Pagpapakatao', teacher: 'DELA CRUZ, CLARISSA O.', grade: 82),
            GradeCard(subject: 'Computer', teacher: 'NAVARRO, LOURDES C.', grade: 89),
            SizedBox(height: 32.0),
            Center(
              child: Text(
                '3rd Quarter (AY: 2023-2024)',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 16.0),
            GradeCard(subject: 'Filipino', teacher: 'PINEDA, JOSE MARIO B.', grade: 85),
            GradeCard(subject: 'English', teacher: 'MANLANGIT, ERLENE T.', grade: 80),
            GradeCard(subject: 'Mathematics', teacher: 'TORREALBA, HAVEN BRIELLE D.', grade: 76),
            GradeCard(subject: 'Science', teacher: 'LINDO, MAGDALENE LUCY T.', grade: 80),
            GradeCard(subject: 'Araling Panlipunan', teacher: 'BALANGAO, DYLAN KATELYN M.', grade: 84),
            GradeCard(subject: 'MAPEH', teacher: 'BAUTISTA, ENRIQUE L.', grade: 88),
            GradeCard(subject: 'Technology and Livelihood Education', teacher: 'ALONZO, VINCENTE R.', grade: 92),
            GradeCard(subject: 'Edukasyon sa Pagpapakatao', teacher: 'DELA CRUZ, CLARISSA O.', grade: 80),
            GradeCard(subject: 'Computer', teacher: 'NAVARRO, LOURDES C.', grade: 86),
            SizedBox(height: 32.0),
            Center(
              child: Text(
                '2nd Quarter (AY: 2023-2024)',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 16.0),
            GradeCard(subject: 'Filipino', teacher: 'PINEDA, JOSE MARIO B.', grade: 83),
            GradeCard(subject: 'English', teacher: 'MANLANGIT, ERLENE T.', grade: 78),
            GradeCard(subject: 'Mathematics', teacher: 'TORREALBA, HAVEN BRIELLE D.', grade: 74),
            GradeCard(subject: 'Science', teacher: 'LINDO, MAGDALENE LUCY T.', grade: 78),
            GradeCard(subject: 'Araling Panlipunan', teacher: 'BALANGAO, DYLAN KATELYN M.', grade: 82),
            GradeCard(subject: 'MAPEH', teacher: 'BAUTISTA, ENRIQUE L.', grade: 86),
            GradeCard(subject: 'Technology and Livelihood Education', teacher: 'ALONZO, VINCENTE R.', grade: 90),
            GradeCard(subject: 'Edukasyon sa Pagpapakatao', teacher: 'DELA CRUZ, CLARISSA O.', grade: 78),
            GradeCard(subject: 'Computer', teacher: 'NAVARRO, LOURDES C.', grade: 84),
            SizedBox(height: 32.0),
            Center(
              child: Text(
                '1st Quarter (AY: 2023-2024)',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 16.0),
            GradeCard(subject: 'Filipino', teacher: 'PINEDA, JOSE MARIO B.', grade: 80),
            GradeCard(subject: 'English', teacher: 'MANLANGIT, ERLENE T.', grade: 75),
            GradeCard(subject: 'Mathematics', teacher: 'TORREALBA, HAVEN BRIELLE D.', grade: 72),
            GradeCard(subject: 'Science', teacher: 'LINDO, MAGDALENE LUCY T.', grade: 75),
            GradeCard(subject: 'Araling Panlipunan', teacher: 'BALANGAO, DYLAN KATELYN M.', grade: 80),
            GradeCard(subject: 'MAPEH', teacher: 'BAUTISTA, ENRIQUE L.', grade: 84),
            GradeCard(subject: 'Technology and Livelihood Education', teacher: 'ALONZO, VINCENTE R.', grade: 88),
            GradeCard(subject: 'Edukasyon sa Pagpapakatao', teacher: 'DELA CRUZ, CLARISSA O.', grade: 75),
            GradeCard(subject: 'Computer', teacher: 'NAVARRO, LOURDES C.', grade: 82),
          ],
        ),
      ),
    );
  }
}

class GradeCard extends StatelessWidget {
  final String subject;
  final String teacher;
  final int grade;

  const GradeCard({
    Key? key,
    required this.subject,
    required this.teacher,
    required this.grade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(subject, style: Theme.of(context).textTheme.titleMedium),
        subtitle: Text(teacher, style: Theme.of(context).textTheme.labelSmall),
        trailing: Text(grade.toString(), style: Theme.of(context).textTheme.titleLarge),
        leading: Icon(Icons.check, color: Colors.green),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: View_All_Grades(),
  ));
}
