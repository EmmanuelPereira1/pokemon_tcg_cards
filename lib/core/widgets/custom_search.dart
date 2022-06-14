import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import 'package:pokemon_tcg_cards/features/home/view/controller/controller_home_page.dart';
import '../../features/search_pokemon/view/controller/controller_search.dart';
import '../generics/resource.dart';
import 'custom_buttom.dart';
import 'custom_loading.dart';

class SearchPokemon extends SearchDelegate {
  final _controller = Modular.get<ControllerHomePage>();

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: Icon(Icons.close))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios));
  }

  @override
  Widget buildResults(BuildContext context) {
    return  FutureBuilder<List<HomeEntity>>(

        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          List<HomeEntity>? data = snapshot.data;
          return Container(
            child: ListView.builder(
                itemCount: data?.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Ink(
                        child: InkWell(
                          onTap: () {
                          Modular.to.pushNamed('/pokeinfoview/',
                        arguments: _controller.loading.data![index].id);
                          },
                          child: Observer(builder: (_) {
                          return CardPokemon(
                              pokemonName: _controller.loading.data![index].name!,
                              onPressed: (){},
                              pokemonCard:
                                   Image(
                    image: NetworkImage(
                        _controller.loading.data![index].images!.small.toString(),
                        scale: 4),
                  ),);}
                        ),
                      ),
                  )],
                  );
                }),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(
      child: Text('Search Pokemon'),
    );
  }
}
