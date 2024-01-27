import 'package:flutter/material.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var title = [
      "Weight Loos \nTraining",
      "cardio \nTraining",
      "Belly Fat Loose \nTraining",
      "cardio \nTraining",
      "Belly Fat Loose \nTraining"
    ];
    var subTitle = [
      "Full Body Workout",
      "Full Body Workout",
      "Full Body Workout",
      "Full Body Workout",
      "Full Body Workout"
    ];
    var time = ["30 Min", "50 Min", "10 Min", "20 Min", "25 Min"];
    var kcal = ["350", "450", "150", "200", "325"];
    var back = [
      Color(0xFF5BCAF2),
      Color(0xFF542BBA),
      Color(0xFFF35F5F),
      Color(0xFFF8BDEB),
      Color(0xFF3F0071)
    ];
    var images = [
      "assets/images/workout3.png",
      "assets/images/workout1.png",
      "assets/images/workout2.png",
      "assets/images/workout4.png",
      "assets/images/workout3.png"
    ];
    return Scaffold(
      backgroundColor: const Color(0xFF18152E),
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            "Workouts",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: const Color(0xFF18152E),
      ),
      body: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 238,
                padding:
                    EdgeInsets.only(top: 10, bottom: 10, left: 25, right: 25),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  color: back[index],
                  child: Stack(
                    children: [
                      Positioned(
                          left: 130,
                          child: Transform(
                              transform: Matrix4.identity()..scale(-1.0, 1.0),
                              alignment: FractionalOffset.center,
                              child: Image.asset(
                                images[index],
                                height: 230,
                              ))),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title[index],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 13,
                              ),
                              child: Text(
                                subTitle[index],
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Container(
                                    width: 105,
                                    height: 40,
                                    child: TextButton(
                                      onPressed: () {
                                        print("Play Button Clicked");
                                      },
                                      style: TextButton.styleFrom(
                                        backgroundColor:
                                            Colors.white.withOpacity(0.45),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10), // Set border radius here
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Icon(Icons.play_arrow,
                                              color: Colors.white),
                                          Center(
                                            child: Center(
                                              child: Text(
                                                time[index],
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    width: 115,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.45),
                                      borderRadius: BorderRadius.circular(
                                          10), // Set border radius here
                                    ),
                                    child: Center(
                                      child: Text(
                                        "🔥 ${kcal[index]}Kcal",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
// 🔥
