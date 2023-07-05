import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:tiktaktoe_game/name_page.dart';

import 'mode_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
              child: Text(
                "Tik Tak Toe",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AvatarGlow(
              endRadius: 200,
              child: Image.asset(
                "lib/images/tiktak.png",
                height: 300,
                width: 250,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[500],
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Mode()));
                },
                child: const Text(
                  "Play Game",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
