import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';

class CustomContainerPrices extends StatelessWidget {
  final double? highPrice;
  final double? midPrice;
  final double? lowPrice;
  CustomContainerPrices(
      {Key? key,
      required this.highPrice,
      required this.midPrice,
      required this.lowPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.appRedDetails),
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_upward_rounded,
                  color: ColorsApp.appRedDetails,
                ),
                SizedBox(width: 15),
                Text('\$ $highPrice',
                    style: GoogleFonts.lato(
                        fontSize: 16, color: ColorsApp.appRedDetails))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.appRedDetails),
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_left_rounded,
                  color: ColorsApp.appRedDetails,
                ),
                SizedBox(width: 15),
                Text('\$ $midPrice',
                    style: GoogleFonts.lato(
                        fontSize: 16, color: ColorsApp.appRedDetails))
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 50,
            width: 130,
            decoration: BoxDecoration(
              border: Border.all(color: ColorsApp.appRedDetails),
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.arrow_downward_rounded,
                  color: ColorsApp.appRedDetails,
                ),
                SizedBox(width: 15),
                Text('\$ $lowPrice',
                    style: GoogleFonts.lato(
                        fontSize: 16, color: ColorsApp.appRedDetails))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
