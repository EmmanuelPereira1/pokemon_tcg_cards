

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/data_source/graphic_pokemon_data_source.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/graphic_error_api.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/entities/graphic_entity.dart';

abstract class AbstractGraphicRepository {
  Future<Resource<List<GraphicEntity>, GraphicErrorApi>> homeRepository();
}

class GraphicRepository implements AbstractGraphicRepository {
  final _dataSource = Modular.get<AbstractGraphicDataSource>();

  @override
  Future<Resource<List<GraphicEntity>, GraphicErrorApi>> homeRepository() async {
    final resource = await _dataSource.dataSourceApi();
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final homeJson = resource.data;
    final pokemonListFromApi = homeJson!["data"] as List;
    final pokemonList = pokemonListFromApi.map((e) => GraphicEntity.fromJson(e)).toList();
    return Resource.success(data: pokemonList);
  }
}