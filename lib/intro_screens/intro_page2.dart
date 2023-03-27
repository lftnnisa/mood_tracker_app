import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
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
                  "assets/images/cuate2.png"
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
                    "Keep your emotions in check with our mood tracker",
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
