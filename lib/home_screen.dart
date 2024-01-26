import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer extends StatefulWidget {
  final String icon;

  const CustomContainer({super.key, required this.icon});

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  var color = 0x00FFFFFF;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        setState(
          () {
            color = color == 0xFFFFFFFF ? 0x00FFFFFF : 0xFFFFFFFF;
          },
        );
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(7.5),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(
                color: Color(color),
                width: 0.7,
              ),
              color: Color(0xff1f1f40),
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: SizedBox(
                  height: 10,
                  child: Center(
                    child: Image.asset(
                      widget.icon,
                      height: 30,
                      width: 45,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18152E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// !HEADING
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: RichText(
              text: TextSpan(
                text: 'Stay Healthy\nwith ',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Training',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
// !SEARCH BAR
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFF5065C1),
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: Colors.white60,
                  size: 25,
                ),
                hintText: "Physical Training",
                hintStyle: TextStyle(color: Colors.white60, fontSize: 15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
              ),
            ),
          ),
// !CATEGORIES
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
            child: Text("Categories",
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16))),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomContainer(icon: "assets/icons/walking.png"),
              CustomContainer(icon: "assets/icons/meditation.png"),
              CustomContainer(icon: "assets/icons/yoga.png"),
              CustomContainer(icon: "assets/icons/cycling.png"),
              CustomContainer(icon: "assets/icons/bench-barbel.png"),
            ],
          ),
          const SizedBox(height: 4),
// !TOP-TRAINING
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text("Top Trainings 💪🏻",
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16))),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: Card(
                color: Color(0xFF6580F4),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Functional \nTraining",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 26,
                                fontWeight: FontWeight.w600),
                          ),
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFF18152E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Set border radius here
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                                Text("30 Min",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset("assets/images/legup.png",
                          height: 300, alignment: Alignment.centerRight),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
// !RECOMMENDED CLASS
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text("Recommended Class",
                style: GoogleFonts.robotoSlab(
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16))),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Row(
                      children: [
                        Card(
                          color: Color(0xFFFFB84C),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xFFC4B0FF),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Row(
                      children: [
                        Card(
                          color: Color(0xFF5FBDFF),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xFF5C469C),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                    child: Row(
                      children: [
                        Card(
                          color: Color(0xFFFF78F0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Color(0xFFC8FFD4),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Functional Training",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "25 min",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                ),
                                Image.asset(
                                  "assets/images/triceps.png",
                                  height: 130,
                                  width: 160,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
// !BOTTOM NAVIGATION BAR
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
        // currentIndex: indexValue,
        // onTap: (value) {
        //   setState(() {
        //     indexValue = value;
        //   });
        // },
      ),
    );
  }
}
