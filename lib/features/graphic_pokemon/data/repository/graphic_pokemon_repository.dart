

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/data_source/graphic_pokemon_data_source.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/graphic_error_api.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/entities/graphic_entity.dart';

abstract class AbstractGraphicRepository {
  Future<Resource<GraphicEntity, GraphicErrorApi>> fetchPokemonGraphic(String id);
}

class GraphicRepository implements AbstractGraphicRepository {
  final _dataSource = Modular.get<AbstractGraphicDataSource>();

  @override
  Future<Resource<GraphicEntity, GraphicErrorApi>> fetchPokemonGraphic(String id) async {
    final resource = await _dataSource.fetchPokemonPrices(id);
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }
    final pokeInfoJson = resource.data;
    final pokeInfoFromApi = pokeInfoJson!["data"] as Map<String, dynamic>;
    final pokemonInfo = GraphicEntity.fromJson(pokeInfoFromApi);
    return Resource.success(data: pokemonInfo);
  }
}