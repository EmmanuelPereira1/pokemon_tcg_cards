import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/domain/entities/search_entity.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/view/controller/controller_search.dart';

import '../../../../core/resources/ColorsApp.dart';
import '../../../../core/resources/FontsApp.dart';
import '../../../../core/widgets/custom_buttom.dart';
import '../../../../core/widgets/custom_loading.dart';

 class SearchPokemon extends SearchDelegate {
   final _controller = Modular.get<ControllerSearch>();
   
  @override 
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: (){
        query = '';
      }, icon: Icon(Icons.close))
    ];
  }

  @override 
  Widget buildLeading(BuildContext context) {
  return IconButton(
    onPressed: (){
      Navigator.pop(context);
    }, 
  icon: Icon(Icons.arrow_back_ios)
  );  
}

  @override 
  Widget buildResults(BuildContext context) {
    return  Stack(
        children: [
          FutureBuilder<List<SearchEntity>>(
            builder: (context, snapshot) {
              if(!snapshot.hasData){
                return Center(child: CustomLoading());
              }
              return ListView.builder(
              itemBuilder: ((context, i) {
                return Observer(builder: (_) {
                  return _controller.loading.status == Status.loading
                  ? const Center(child: CustomLoading(),)
                  : CardPokemon(
                    pokemonName: _controller.loading.data![i].name.toString(),
                    onPressed: () {
                      Modular.to.pushNamed('/pokeinfoview/',
                          arguments: _controller.loading.data![i].id);
                    },
                    pokemonCard: Image(
                      image: NetworkImage(
                          _controller.loading.data![i].images!.small.toString(),
                          scale: 4),
                    ),
                  );
                });
              }),
            );
            }
            ) 
          
        ],
      );
  }

  @override 
  Widget buildSuggestions(BuildContext context){
    return Center(
      child: Text('Search Pokemon'),
    );
  }
}