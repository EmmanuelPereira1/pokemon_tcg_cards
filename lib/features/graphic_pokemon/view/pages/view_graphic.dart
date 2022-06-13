import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/resources/text_style.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_container_prices.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/view/controller/controller_graphic.dart';
import 'package:url_launcher/url_launcher.dart';

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
                  height: 100,
                ),
                Text('PRICES', style: CustomTextStyle.customTitleTextStyle),
                SizedBox(
                  height: 25,
                ),
                Observer(builder: (_) {
                  return Text('${_controller.loading.data!.name!}',
                      style: CustomTextStyle.customSubTitleTextStyle);
                }),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return CustomContainerPrices(
                        text: 'HOLOFOIL',
                        highPrice:  _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.high! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.high! : 0.0,
                        midPrice:  _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.mid! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.mid! : 0.0,
                        lowPrice:  _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.low! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.holofoil!.low! : 0.0,
                      );
                    }),
                    SizedBox(width: 20),
                    Observer(builder: (_) {
                      return CustomContainerPrices(
                        text: 'REVERSE',
                        highPrice: _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.high! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.high! : 0.0,
                        midPrice:  _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.mid! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.mid! : 0.0,
                        lowPrice:  _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.low! != false ? _controller
                            .loading.data!.tcgplayer!.prices!.reverseHolofoil!.low! : 0.0,
                      );
                    })
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Observer(builder: (_) {
                  return ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(2),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(ColorsApp.appRedDetails),
                      ),
                      onPressed: () async {
                        final Uri url = Uri.parse(
                            "${_controller.loading.data!.tcgplayer!.url!}");
                        if (await launchUrl(
                          url,
                          mode: LaunchMode.inAppWebView,
                        ))
                          ;
                        else
                          throw "Could not launch $url";
                      },
                      child: Text('More Informations'));
                })
              ],
            ),
          )),
    );
  }
}
