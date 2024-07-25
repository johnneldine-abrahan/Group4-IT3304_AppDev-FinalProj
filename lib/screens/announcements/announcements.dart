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
