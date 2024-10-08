import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

part 'home_view.widgets.dart';

const overlayDescriptionText =
    'In the vast world of Minecraft, a trio of friends forms a group known as MCFC. Each member rules over their own unique kingdom, showcasing their individual creativity and strategy. One might have a kingdom rich in resources, another a fortress of formidable defenses, and the third a haven of enchanting beauty. Together, they create a dynamic world filled with adventure, competition, and camaraderie, as they expand their realms and craft their legacies within the pixelated universe.';
//const backgroundImageUrl = 'https://source.unsplash.com/XO5qTnr0a50';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffFEE5CA),
      body: ScrollTransformView(
        children: [
          ScrollTransformItem(
              builder: (scrollOffset){
                final offsetper = min(scrollOffset / screenSize.height, 1);
                return Center(
                  child: Image.asset(
                    'assets/images/mcfc.jpg',
                    height:screenSize.height - (screenSize.height * 1.5 * offsetper ) ,
                    width:screenSize.width - (screenSize.width * 1 * offsetper ) ,
                  ),
                );
                },
              offsetBuilder: (scrollOffset)
              {
                final offsetper = min(scrollOffset / screenSize.height, 1);
                //final hightper = screenSize.height * 1 * offsetper;
                final bool startmovin = scrollOffset >= screenSize.height * 0.8;
                final onscreenOffset = screenSize.height * 2 * offsetper;
                return Offset(0,
                  !startmovin?
                      onscreenOffset:
                      onscreenOffset - (scrollOffset - screenSize.height * 0.8)


                );
              } ,
          ),
          ScrollTransformItem(builder: (scrollOffset)
            {return const OverlayTextSection();},
            offsetBuilder: (scrollOffset) => Offset(0, -screenSize.height),

          ),
          ScrollTransformItem(builder: (context){return const BottomSection();})
        ],
      ),
    );
  }
}
