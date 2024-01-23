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
        setState(() {
          color = color == 0xFFFFFFFF ? 0x00FFFFFF : 0xFFFFFFFF;
        });
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(7.5),
          child: Container(
            height: 55,
            decoration: BoxDecoration(
                borderRadius:
                const BorderRadius.all(Radius.circular(10),),
                border: Border.all(
                  color: Color(color), // Set your desired border color
                  width: 0.7, // Set your desired border width
                ),
                color: Color(0xff1f1f40)),

            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                child: SizedBox(
                      height: 10,
                      child: Center(child: Image.asset(widget.icon,height: 30,width: 45,)),
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
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(20.0),
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
              CustomContainer(
                icon : "assets/icons/walking.png"
              ),
              CustomContainer(
                  icon : "assets/icons/meditation.png"
              ),
              CustomContainer(
                  icon : "assets/icons/yoga.png"
              ),
              CustomContainer(
                  icon : "assets/icons/cycling.png"
              ),
              CustomContainer(
                  icon : "assets/icons/bench-barbel.png"
              ),
            ],
          )
        ],
      ),
    );
  }
}
