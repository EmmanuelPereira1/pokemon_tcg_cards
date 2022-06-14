import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';

abstract class AbstractRepositoryApi {
  Future<Resource<List<HomeEntity>, ErrorApi>> homeRepository(String? query);
}

class RepositoryApi implements AbstractRepositoryApi {
  final _dataSource = Modular.get<AbstractHomeDataSource>();

  @override
  Future<Resource<List<HomeEntity>, ErrorApi>> homeRepository(String? query) async {
    final resource = await _dataSource.dataSourceApi(query);
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final homeJson = resource.data;
    final pokemonListFromApi = homeJson!["data"] as List;
    var pokemonList = pokemonListFromApi.map((e) => HomeEntity.fromJson(e)).toList();
     if(query != false){
      pokemonList = pokemonList.where((element) => element.name!.toLowerCase().contains(query!.toLowerCase())).toList();
    };
    return Resource.success(data: pokemonList);
  }
}
