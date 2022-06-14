import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class CardPokemon extends StatelessWidget {
  final String pokemonName;
  final Function() onPressed;
  final String pokemonCard;
  final List pokeTypes;
  const CardPokemon({
    Key? key,
    required this.pokemonName,
    required this.onPressed,
    required this.pokemonCard,
    required this.pokeTypes,
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
            leading: SizedBox(
              child: Image.network(pokemonCard),
            ),
            title: Flexible(
              child: Text(
                pokemonName,
                style: FontsApp.mainFontWithBold30.copyWith(
                  color: ColorsFont.appFontDetails,
                ),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(4),
              child: ListView.builder(
                itemCount: pokeTypes.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    child: Text(
                      'Types ${pokeTypes[index]}',
                      style: FontsApp.mainFontdetails20
                          .copyWith(color: ColorsFont.appFontDarkness),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
