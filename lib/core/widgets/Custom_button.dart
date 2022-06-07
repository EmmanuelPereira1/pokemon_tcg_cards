import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String pokemonName;
  final Function() onPressed;
  final Image pokemonCard;


  const CustomButton({Key? key, required this.pokemonName, required this.onPressed, required this.pokemonCard,}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Ink();
  }
}
