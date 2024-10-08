import 'package:google_fonts/google_fonts.dart';


import 'package:flutter/material.dart';
import 'mobile_view.dart';

//import '../home_view.dart';

class mobileBottomWidget extends StatelessWidget {
   const mobileBottomWidget({super.key});



  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: screenSize.width,
      color: const Color(0xffB10D31),
      child: Stack(
        children: [
          Positioned.fill(
            top: -50,
            child: Center(
              child: Text(
                'Welcome to MCFC mobile, where players build kingdoms, form alliances, and conquer territories. Gather your resources, rally your friends, and let the adventure begin!',
                textAlign: TextAlign.center,
                style: GoogleFonts.biryani(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w800,
                  height: 1.2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class mobileOverlayText extends StatelessWidget {
  const mobileOverlayText({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height,
      width: screenSize.width,
      child: const Stack(
        children: [
          _TitleText(
            text: 'CONQUER',
            top: 100,
            left: 20,
          ),
          _TitleText(
            text: 'BUILD',
            top: 200,
            left: 100,
          ),
          _TitleText(
            text: 'UNITE',
            top: 300,
            left: 120,
          ),
          _TitleText(
            text: 'Mobile',
            top: 400,
            left: 100,
          ),
          Positioned(
            right: 50,
            top: 170,
            child: SizedBox(
              width: 470,
              child: Text(
                overlayDescriptionText,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TitleText extends StatelessWidget {
  final double? top;
  final double? left;
  final String text;
  const _TitleText({
    Key? key,
    required this.text,
    this.top,
    this.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: Text(
          text,
          style: GoogleFonts.fascinate(
              fontSize: 100, fontWeight: FontWeight.w900, color: Colors.white),
        ));
  }
}
