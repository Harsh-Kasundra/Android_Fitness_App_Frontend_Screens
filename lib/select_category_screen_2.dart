import 'package:clg_fitness_app/bottom_nav_bar.dart';
import 'package:clg_fitness_app/home_screen_1.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String text;
  final String icon;

  const CustomContainer({super.key, required this.text, required this.icon});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  var color = 0xFF413e59;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {});
        color = color == 0xFF3452Eb ? 0xFF413e59 : 0xFF3452Eb;
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(7.5),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                color: Color(color)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Image.asset(widget.icon),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    widget.text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
// class CustomContainer extends StatefulWidget {
//
//   @override
//   State<CustomContainer> createState() => _CustomContainerState(String text,String icon);
// }
//
// class _CustomContainerState extends State<CustomContainer> {
//   _CustomContainerState(this.text, this.icon);
//
//   final String text;
//   final String icon;
//   var color = 0xFF413e59;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {});
//         color = color == 0xFF3452Eb ? 0xFF413e59 : 0xFF3452Eb;
//       },
//       child: Center(
//         child: Container(
//           height: 50,
//           width: 130,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(50)),
//               color: Color(color)
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Container(
//                   height: 30,
//                   child: Image.asset(icon),
//                 ),
//               ),
//               SizedBox(width: 10,),
//               Center(
//                 child: Container(
//                   child: Text(
//                     text,
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({super.key});

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  var color = 0xFF413e59;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF18152E),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF18152E),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            const Center(
              child: Text(
                "Select Your Favorite \n workout Category",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/runner.png", text: "Running"),
                ),
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/cycling.png", text: "Cycling"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/walking.png", text: "Walking"),
                ),
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/skip-rope.png",
                      text: "Overhead Extention"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/raise-hand.png", text: "Good Morning"),
                ),
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/push-up.png", text: "Front Raise"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/squat.png", text: "Sitting"),
                ),
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/bench-barbel.png", text: "Bench Press"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/meditation.png", text: "Yoga"),
                ),
                Container(
                  child: const CustomContainer(
                      icon: "assets/icons/lying.png", text: "Lying"),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 70),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const BottomNavBar(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF3452Eb),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(15), // Set border radius here
                    ),
                    minimumSize: const Size(350.0, 80),
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
