import 'package:flutter/material.dart';
import 'home_view.dart';
import 'mobile view/mobile_view.dart';

class responsive extends StatelessWidget {
  const responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, constraints) {
        if(constraints.maxWidth > 500)
        {
          return const HomeView();
        }else{
          return const mobileView();
        }

      },
    );
  }
}
