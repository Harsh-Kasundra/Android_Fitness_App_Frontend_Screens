import 'package:clg_fitness_app/select_category_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/started.png",
            width: 500,
            height: 1000,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Center(
                  child: Text(
                    "To make it easier for you to stay on top of your game",
                    style: TextStyle(color: Colors.white),
                    maxLines: 2,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "and keep up to date with latest",
                  style: TextStyle(color: Colors.white),
                  maxLines: 2,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 70),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const SelectCategoryScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF1B1734),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(18), // Set border radius here
                      ),
                      minimumSize: const Size(350.0, 80),
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
