import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GetDateContainer extends StatefulWidget {
  final String day;
  final String date;

  const GetDateContainer({super.key, required this.day, required this.date});

  @override
  State<GetDateContainer> createState() => _GetDateContainerState();
}

class _GetDateContainerState extends State<GetDateContainer> {
  var color = 0xFF413E59;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          color = color == 0xFF3452E8 ? 0xFF413E59 : 0xFF3452E8;
        });
      },
      child: Container(
        height: 80,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.day,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              widget.date,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF18152E),
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Activity",
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          backgroundColor: const Color(0xFF18152E),
        ),
        body: Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Progress",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See Details",
                        style: TextStyle(color: Colors.white38, fontSize: 13),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 5, right: 5),
                  child: Card(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFF7DC6D7),
                            Color(0xFF87A4D6),
                            Color(0xFF9893DF),
                            Color(0xFF7078D3),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      height: 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new CircularPercentIndicator(
                            radius: 50.0,
                            lineWidth: 13.0,
                            percent: 0.80,
                            center: new Text(
                              "80%",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            progressColor: Color(0xFF283050),
                            backgroundColor: Color(0xFF639FD4),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Great Your",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "Daily Task Almost \nCompleted",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    bottom: 15,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "January 2022",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const GetDateContainer(day: "S", date: "11"),
                      const GetDateContainer(day: "S", date: "12"),
                      const GetDateContainer(day: "M", date: "13"),
                      const GetDateContainer(day: "T", date: "14"),
                      const GetDateContainer(day: "W", date: "15"),
                    ],
                  ),
                ),
                Text(
                  "Your Progress",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        getCard(
                            0xFF5D79F2,
                            Icons.local_fire_department_outlined,
                            "Kcal Burnt",
                            "321",
                            "Kcal"),
                        getCard(0xFFF35F5F, Icons.monitor_heart, "Heart Rate",
                            "60", "Beats"),
                      ],
                    ),
                    Row(
                      children: [
                        getCard(0xFF5BCAF2, Icons.directions_walk, "Steps",
                            "5030", "Steps"),
                        getCard(0xFF2DD699, Icons.fitness_center, "Worked Out",
                            "40", "Min"),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getCard(int color, IconData iconData, String name, String value_1,
      String value_2) {
    return Expanded(
      child: Container(
        height: 160,
        child: Card(
          color: Color(color),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.35),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      value_1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Text(
                        value_2,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
