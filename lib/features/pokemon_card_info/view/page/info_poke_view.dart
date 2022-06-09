import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/view/controller/poke_info_controller.dart';

class PokeInfoView extends StatefulWidget {
  const PokeInfoView({Key? key}) : super(key: key);

  @override
  State<PokeInfoView> createState() => _PokeInfoViewState();
}

class _PokeInfoViewState extends State<PokeInfoView> {
  final _controller = Modular.get<PokeInfoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
      body: Container(
child: Text(""),
      ),

    );
  }
}
