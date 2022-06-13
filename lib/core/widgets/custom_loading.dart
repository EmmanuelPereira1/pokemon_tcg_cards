import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Container(
          height: 180,
          width: 180,
          child: Lottie.asset('image/pokeballAnimation.json'),
        ),
        Text(
          "Loading...",
          style: FontsApp.mainFontdetails20.copyWith(
            color: ColorsFont.appFontDetails,
          ),
        ),
      ],
    ));
  }
}
