import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_buttom.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';

import '../../../../core/resources/ColorsApp.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_drawer.dart';

class ViewHomePage extends StatefulWidget {
  ViewHomePage({Key? key}) : super(key: key);

  @override
  State<ViewHomePage> createState() => _ViewHomePageState();
}

class _ViewHomePageState extends State<ViewHomePage> {
  final _controller = Modular.get<ControllerHomePage>();

  @override
  void initState() {
    super.initState();
    _controller.listCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          ListView.builder(
            itemBuilder: ((context, i) {
              return Observer(builder: (_) {
                return CardPokemon(
                  pokemonName: _controller.loading.data![i].name.toString(),

                  onPressed: () {
                    Modular.to.pushNamed('/pokeinfoview/', arguments: _controller.loading.data![i].id);

                  },
                  pokemonCard: Image(
                    image: NetworkImage(
                        _controller.loading.data![i].images!.small.toString(),
                        scale: 4),
                  ),
                );
              });
            }),
          )
        ],
      ),
      
    );
  }
}
