import 'package:flutter/material.dart';

class IntroPage1 extends StatefulWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  State<IntroPage1> createState() => _IntroPage1State();
}

class _IntroPage1State extends State<IntroPage1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(39, 41, 109, 100),
      body: SafeArea(
        child: Column(
          children:[
            const SizedBox(
              height: 16,
            ),
            Container(
              height: size.height / 1.8,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Image.asset(
                  "assets/images/cuate.png"
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Track your mood, improve your life",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 36,
                      fontFamily: 'Montserrat',

                    ),
                  ),
                  SizedBox(
                    height: 64,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
