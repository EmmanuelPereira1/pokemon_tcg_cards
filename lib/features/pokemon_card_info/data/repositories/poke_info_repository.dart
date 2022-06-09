import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import '../../domain/Entities/info_card_entity.dart';
import '../data_sources/pokeinfo_data_source.dart';

abstract class AbstractPokeInfoRepositoryApi {
  Future<Resource<List<InfoPokemonEntity>, ErrorApi>> pokeInfoRepository();
}

class PokeInfoRepositoryApi implements AbstractPokeInfoRepositoryApi {
  final _dataSource = Modular.get<AbstractPokeInfoDataSource>();

  @override
  Future<Resource<List<InfoPokemonEntity>, ErrorApi>> pokeInfoRepository() async {
    final resource = await _dataSource.pokeInfoDataSourceApi();
    if (resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final pokeInfoJson = resource.data;
    final pokeInfoFromApi = pokeInfoJson!["data"] as List;
    final pokemonInfo = pokeInfoFromApi.map((e) => InfoPokemonEntity.fromJson(e)).toList();
    return Resource.success(data: pokemonInfo);
  }
}
