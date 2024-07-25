import 'package:student_portal/constants.dart';
import 'package:flutter/material.dart';

class Liabilities extends StatefulWidget {
  const Liabilities({Key? key}) : super(key: key);
  static String routeName = 'Liabilities';

  @override
  State<Liabilities> createState() => _LiabilitiesState();
}

class _LiabilitiesState extends State<Liabilities> with TickerProviderStateMixin {
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
          title: Text('Liabilities'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  LiabilityCard(
                    name: 'Tuition Balance',
                    description: 'Wishing you well in your journey, this is a friendly reminder of your outstangding financial obligation for the thrid grading period tuition at the Cashier. We kindly ask you to settle your liabilities at your earliest convenience to maintain a smooth educational experience. ',
                    postedBy: 'Finance 2024-05-04',
                    quarter: 'Third Quarter / 2024',
                  ),
                  LiabilityCard(
                    name: 'Credential Update',
                    description: 'Good day! Please submit your Form 137 and Good Moral Character certificate from your previous school. Please submit it at the Registrar Office. Thank you!',
                    postedBy: 'Registrar 2023-6-28',
                    quarter: 'First Quarter / 2024',
                  ),
                  LiabilityCard(
                    name: 'Guidance Counseling',
                    description: 'Meet with your guidance counselor to discuss your academic, career, and personal concerns in a confidential and supportive environment. Our guidance counselors are here to help you navigate your challenges, set achievable goals, and make informed decisions about your future.',
                    postedBy: 'Guidance 2022-05-23',
                    quarter: 'Third Quarter / 2022',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LiabilityCard extends StatelessWidget {
  final String name;
  final String description;
  final String postedBy;
  final String quarter;

  const LiabilityCard({
    Key? key,
    required this.name,
    required this.description,
    required this.postedBy,
    required this.quarter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          ListTile(
            title: Text(name, style: Theme.of(context).textTheme.titleMedium),
            subtitle: Text(description, style: Theme.of(context).textTheme.labelSmall),
            leading: Icon(Icons.warning, color: Colors.red),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Posted by: $postedBy', style: Theme.of(context).textTheme.labelSmall),
                Text(quarter, style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
