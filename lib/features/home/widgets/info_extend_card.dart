import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class InfoExtendCard extends StatelessWidget {
  final String pokeName;
  final String pokeRarity;
  final String pokeSerie;
  final Image extendPokeCard;
  final Function()? priceButton;
  final Widget? child;

  const InfoExtendCard(
      {Key? key,
      required this.pokeName,
      required this.extendPokeCard,
      required this.pokeRarity,
      required this.pokeSerie,
      this.priceButton,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 48, 24, 48),
      child: Center(
        child: Card(
          elevation: 4,
          color: ColorsApp.appWhite,
          child: Column(
            children: [
              extendPokeCard,
              const SizedBox(
                height: 8,
              ),
              Text(
                pokeName,
                style: FontsApp.mainFontWithBold30.copyWith(
                  color: ColorsFont.appFontDetails,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: "Rarity: ",
                    style: FontsApp.mainFontdetails20.copyWith(
                      color: ColorsFont.appFontDetails,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: pokeRarity,
                        style: FontsApp.mainFontdetails20.copyWith(
                          color: ColorsFont.appPokeInfo,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 4,
              ),
              RichText(
                text: TextSpan(
                    text: "Serie: ",
                    style: FontsApp.mainFontdetails20.copyWith(
                      color: ColorsFont.appFontDetails,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: pokeSerie,
                        style: FontsApp.mainFontdetails20.copyWith(
                          color: ColorsFont.appPokeInfo,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 64,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: priceButton,
                  child: child,
                  style: ElevatedButton.styleFrom(
                      primary: ColorsApp.appRedDetails,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
