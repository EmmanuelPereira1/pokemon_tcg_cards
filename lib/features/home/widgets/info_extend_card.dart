import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';

class InfoExtendCard extends StatelessWidget {
  final String pokeName;
  final String pokeNumber;
  final Image extendPokeCard;
  final Function()? priceButton;
  final Widget? child;

  const InfoExtendCard(
      {Key? key,
      required this.pokeName,
      required this.pokeNumber,
      required this.extendPokeCard,
       this.priceButton,
       this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(60),
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
              const SizedBox(
                height: 16,
              ),
              Flexible(
                child: Text(
                  pokeNumber,
                  style: FontsApp.mainFontdetails20.copyWith(
                    color: ColorsFont.appPokeInfo,
                  ),
                ),
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
