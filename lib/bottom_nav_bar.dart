import 'package:clg_fitness_app/activity_screen_4.dart';
import 'package:clg_fitness_app/home_screen_1.dart';
import 'package:clg_fitness_app/workout_screen_3.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var indexValue = 0;
  List<Widget> pages = [
    HomeScreen(),
    WorkoutScreen(),
    ActivityScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[indexValue],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fitness_center),
              label: 'Workouts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_run),
              label: 'Your Activity',
            ),
          ],
          backgroundColor: Color(0xFF18152E),
          selectedItemColor: Color(0xFF3452Eb),
          unselectedItemColor: Colors.white70,
          showUnselectedLabels: true,
          currentIndex: indexValue,
          onTap: (value) {
            setState(() {
              indexValue = value;
              });
            },

          // currentIndex: indexValue,
          // onTap: (value) {
          //   setState(() {
          //     indexValue = value;
          //   });
          // },
        ),
      ),
    );
  }
}
