import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_container_prices.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/view/controller/controller_graphic.dart';

class ViewGraphic extends StatefulWidget {
  final String pokemonId;
  ViewGraphic({Key? key, required this.pokemonId}) : super(key: key);

  @override
  State<ViewGraphic> createState() => _ViewGraphicState();
}

class _ViewGraphicState extends State<ViewGraphic> {
  final _controller = Modular.get<ControllerGraphic>();

  @override

  @override
  void initState() {
    _controller.pricePokemon(widget.pokemonId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text('PRICES'),
                Observer(builder: (_) {
                  return Text('${_controller.loading.data!.name!}');
                }),
                SizedBox(
                  height: 25,
                ),
                Text(''),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return CustomContainerPrices(
                        highPrice: _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.high!,
                        midPrice: _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.mid!,
                        lowPrice: _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.low!,
                      );
                    }),
                    SizedBox(width: 20),
                    Observer(builder: (_) {
                      return CustomContainerPrices(
                        highPrice: _controller.loading.data!.tcgplayer!.prices!
                            .reverseHolofoil!.high!
                            ,
                        midPrice: _controller.loading.data!.tcgplayer!.prices!
                            .reverseHolofoil!.mid!,
                        lowPrice: _controller.loading.data!.tcgplayer!.prices!
                            .reverseHolofoil!.low!,
                      );
                    })
                  ],
                ),
                ElevatedButton(onPressed: () {}, child: Container())
              ],
            ),
          )),
    );
  }
}
