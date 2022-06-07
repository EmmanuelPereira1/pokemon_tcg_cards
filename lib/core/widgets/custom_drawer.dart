import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: ColorsApp.appGreyBackground.withOpacity(0.4),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 1,
              sigmaY: 1,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column( children: [
                    Lottie.asset('image/pokemonAnimation.json',
                    height: 100,
                    width: 100,)
                  ],
                   
                  )],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
