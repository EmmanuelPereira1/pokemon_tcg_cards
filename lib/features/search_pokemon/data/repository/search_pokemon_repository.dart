

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/data/data_source/search_pokemon_data_source.dart';

import '../../domain/entities/search_entity.dart';
import '../search_error_api.dart';

abstract class AbstractSearchPokemonRepository {
  Future<Resource<List<SearchEntity>, SearchErrorApi>> fetchSearchPokemon( String? query);
}

class SearchPokemonRepository implements AbstractSearchPokemonRepository {
  final _dataSource = Modular.get<AbstractSearchPokemonDataSource>();

  @override
  Future<Resource<List<SearchEntity>, SearchErrorApi>> fetchSearchPokemon( String? query) async {
    final resource = await _dataSource.fetchSearchPokemon( query);
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }
    final homeJson = resource.data;
    final pokemonListFromApi = homeJson!["data"] as List;
    var results = pokemonListFromApi.map((e) => SearchEntity.fromJson(e)).toList();
    if(query != false){
      results = results.where((element) => element.name!.toLowerCase().contains(query!.toLowerCase())).toList();
    };
    return Resource.success(data: results);
  }
}