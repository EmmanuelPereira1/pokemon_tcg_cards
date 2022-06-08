import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class CardPokemon extends StatelessWidget {
  final String pokemonName;
  final Function() onPressed;
  final Image pokemonCard;
  const CardPokemon({
    Key? key,
    required this.pokemonName,
    required this.onPressed,
    required this.pokemonCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Card(
          elevation: 4,
          child: ListTile(
            onTap: onPressed,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                pokemonCard,
                const SizedBox(
                  width: 40,
                ),
                Flexible(
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
      ),
    );
  }
}
