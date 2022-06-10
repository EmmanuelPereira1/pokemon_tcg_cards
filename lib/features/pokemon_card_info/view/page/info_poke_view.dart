import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/FontsApp.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';
import 'package:pokemon_tcg_cards/features/home/widgets/info_extend_card.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/view/controller/poke_info_controller.dart';

class PokeInfoView extends StatefulWidget {
  final String pokemonId;
  const PokeInfoView({Key? key, required this.pokemonId}) : super(key: key);

  @override
  State<PokeInfoView> createState() => _PokeInfoViewState();
}

class _PokeInfoViewState extends State<PokeInfoView> {
  final _controller = Modular.get<PokeInfoController>();

  @override
  void initState() {
    _controller.pokeInfo(widget.pokemonId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: Observer(builder: (_) {
        return InfoExtendCard(
         
          extendPokeCard: Image(
            image: NetworkImage(
              _controller.loading.data!.images!.large!,
            ),
          ),
          pokeName: _controller.loading.data!.name!,
          pokeRarity: _controller.loading.data!.rarity!,
          priceButton: () {},
          child: Text(
            'Current Price',
            style: FontsApp.mainFontdetails20.copyWith(
              color: ColorsApp.appGreyBackground,
            ),
          ),
        );
      }),
    );
  }
}
