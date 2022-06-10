import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';

class CustomTextStyle {

  static TextStyle customTitleTextStyle = GoogleFonts.lato(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 25,
    color: ColorsApp.appRedDetails,
  );

  static TextStyle customSubTitleTextStyle = GoogleFonts.lato(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: ColorsApp.appRedDetails,
  );
}