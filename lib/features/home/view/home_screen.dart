import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_app_bar.dart';
import 'package:pokemon_tcg_cards/core/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.appGreyBackground,
      drawer: CustomDrawer(),
      appBar: CustomAppBar(),
    
      
    );
  }
}