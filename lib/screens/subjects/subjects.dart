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

