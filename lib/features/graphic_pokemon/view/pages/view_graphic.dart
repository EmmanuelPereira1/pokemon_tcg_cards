import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/view/controller/controller_graphic.dart';
import 'package:pokemon_tcg_cards/features/home/domain/use_cases/home_use_case.dart';

class ViewGraphic extends StatelessWidget {
  ViewGraphic({ Key? key }) : super(key: key);
  final _controller = Modular.get<ControllerGraphic>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Container(

        
      ),
      
    );
  }
}