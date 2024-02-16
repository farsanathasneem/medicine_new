import 'package:flutter/material.dart';
import 'package:medicine_app/screens/scheduleview.dart';

class Addmed extends StatefulWidget {
  const Addmed({super.key});

  @override
  State<Addmed> createState() => _AddmedState();
}

class _AddmedState extends State<Addmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff04516f),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Schedules();
                    },
                  ),
                );
              },
              child: Text(
                "Done",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xffffffff),
                ),
              ))
        ],
      ),
    );
  }
}
