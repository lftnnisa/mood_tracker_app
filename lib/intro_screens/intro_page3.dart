import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
                  "assets/images/amico.png"
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
                    "Take control of your mood and emotions with our app",
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
