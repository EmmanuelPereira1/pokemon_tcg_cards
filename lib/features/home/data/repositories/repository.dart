import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';

abstract class AbstractRepositoryApi {
  Future<Resource<List<HomeEntity>, ErrorApi>> homeRepository();
}

class RepositoryApi implements AbstractRepositoryApi {
  final _dataSource = Modular.get<AbstractHomeDataSource>();

  @override
  Future<Resource<List<HomeEntity>, ErrorApi>> homeRepository() async {
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
