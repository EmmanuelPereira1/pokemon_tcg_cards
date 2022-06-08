import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';

class HomePage extends StatelessWidget {
  final _controller = Modular.get<ControllerHomePage>();
   HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),

      
    );
  }
}
