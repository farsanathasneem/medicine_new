import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:medicine_app/screens/addmed.dart';

class Schedules extends StatefulWidget {
  const Schedules({super.key});

  @override
  State<Schedules> createState() => _SchedulesState();
}

class _SchedulesState extends State<Schedules> {
  List<int> item = List<int>.generate(10, (index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios,
        color: Color(0xffffffff),)),
        backgroundColor: Color(0xff04516f),
        title: Text(
          "Medicines",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xffffffff)),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Addmed();
                    },
                  ),
                );
          }, icon: Icon(Icons.add,size: 30,),
          color: Color(0xffffffff),)
        ],
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 16,
          padding: EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return Slidable(
              endActionPane: ActionPane(motion: StretchMotion(), children: [
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: Color(0xff15c79a),
                  icon: Icons.edit,
                ),
                // Gap(1),
                // Container(width: 1,),
                SlidableAction(
                  onPressed: ((context) {}),
                  backgroundColor: Color(0xff15c79a),
                  icon: Icons.delete,
                ),
              ]),
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.pills,
                  color: Color(0xff04516f),
                ),
                title: Text(
                  "Medicine name$index",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "time",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        
                        Gap(10),
                        Text(
                          "dosage",
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],

                    ),
                    Row(
                      children: [
                        Text(
                              "discription",
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
