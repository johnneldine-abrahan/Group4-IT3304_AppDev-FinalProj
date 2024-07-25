import 'package:flutter/material.dart';

class Grades extends StatefulWidget {
  const Grades({Key? key}) : super(key: key);
  static String routeName = 'Grades';

  @override
  _GradesState createState() => _GradesState();
}

class _GradesState extends State<Grades> with TickerProviderStateMixin {
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
          title: Text('Grades'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  '4th Quarter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  GradeCard(subject: 'Filipino', teacher: 'Mr. Jim', grade: 88),
                  GradeCard(subject: 'English', teacher: 'Mr. Lee', grade: 82),
                  GradeCard(subject: 'Mathematics', teacher: 'Ms. Sheena', grade: 78),
                  GradeCard(subject: 'Science', teacher: 'Ms. Christine', grade: 82),
                  GradeCard(subject: 'Araling Panlipunan', teacher: 'Ms. Christine', grade: 86),
                  GradeCard(subject: 'MAPEH', teacher: 'Ms. Christine', grade: 90),
                  GradeCard(subject: 'Technology and Livelihood Education', teacher: 'Ms. Christine', grade: 94),
                  GradeCard(subject: 'Edukasyon sa Pagpapakatao', teacher: 'Ms. Christine', grade: 82),
                  GradeCard(subject: 'Computer', teacher: 'Ms. Christine', grade: 89),
                ],
              ),
            ),
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
    home: Grades(),
  ));
}
