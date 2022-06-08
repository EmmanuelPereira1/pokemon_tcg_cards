import 'package:flutter/material.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorsApp.appRedDetails),
      elevation: 0,
      backgroundColor: ColorsApp.appGreyBackground,
      title: SizedBox(
        child: Image.asset(
          'image/pokemonLogo.png',
          height: 150,
          width: 150,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search_rounded,
            color: ColorsApp.appRedDetails,
            size: 40,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
