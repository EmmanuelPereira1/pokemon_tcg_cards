import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/resources/ColorsApp.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/view/pages/view_search.dart';

class CustomAppBar extends StatefulWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
  @override
  Size get preferredSize => const Size.fromHeight(50);
}

class _CustomAppBarState extends State<CustomAppBar> {
  final _search = Modular.get<SearchPokemon>();

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
          onPressed: () async {
            await showSearch(context: context, delegate: _search);
          },
        )
      ],
    );
  }
}
