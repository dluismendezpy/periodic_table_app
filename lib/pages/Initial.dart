import './NavbarBelow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Initial extends StatefulWidget {
  const Initial({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Initial> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NavbarBelow()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(16, 16, 16, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 400,
            height: 100,
            child: Text(
              'Tabla periodica',
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 400,
              width: 400,
              child: Lottie.asset("assets/ele.json"),
            ),
          ),
        ],
      ),
    );
  }
}
