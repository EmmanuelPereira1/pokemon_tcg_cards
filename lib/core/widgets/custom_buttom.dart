import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class CustomButton extends StatelessWidget {
  final String pokemonName;
  final Function() onPressed;
  final Image pokemonCard;
  const CustomButton({
    Key? key,
    required this.pokemonName,
    required this.onPressed,
    required this.pokemonCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        color: ColorsApp.appWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: InkWell(
          onTap: onPressed,
          child: Row(
            children: [
              pokemonCard,
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  pokemonName,
                  style: FontsApp.mainFontWithBold30.copyWith(
                    color: ColorsFont.appFontDetails,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
