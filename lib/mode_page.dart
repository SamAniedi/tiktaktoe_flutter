import 'package:flutter/material.dart';
import 'package:tiktaktoe_game/name_page.dart';
import 'package:tiktaktoe_game/name_page2.dart';

class Mode extends StatelessWidget {
  const Mode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                const Text(
                  "Choose a playing mode",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 39, vertical: 15)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NamePage2()));
                    },
                    child: const Text(
                      "AI Mode",
                      style: TextStyle(fontSize: 16),
                    )),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NamePage()));
                    },
                    child: const Text(
                      "Players Mode",
                      style: TextStyle(fontSize: 16),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
