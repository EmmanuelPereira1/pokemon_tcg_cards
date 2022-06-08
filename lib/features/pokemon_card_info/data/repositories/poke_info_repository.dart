import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';

import '../data_source/pokeInfo_data_source.dart';

abstract class AbstractPokeInfoRepositoryApi {
  Future<Resource<List<HomeEntity>, ErrorApi>> pokeInfoRepository();
}

class PokeInfoRepositoryApi implements AbstractPokeInfoRepositoryApi {
  final _dataSource = Modular.get<AbstractPokeInfoDataSource>();

  @override
  Future<Resource<List<HomeEntity>, ErrorApi>> pokeInfoRepository() async {
    final resource = await _dataSource.dataSourceApi();
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final homeJson = resource.data;
    final pokemonListFromApi = homeJson!["data"] as List;
    final pokemonList = pokemonListFromApi.map((e) => HomeEntity.fromJson(e)).toList();
    return Resource.success(data: pokemonList);
  }
}
