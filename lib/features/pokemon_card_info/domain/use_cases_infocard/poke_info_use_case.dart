import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/data/repositories/poke_info_repository.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/domain/Entities/info_card_entity.dart';

abstract class AbstractUseCasePokeInfo {
  Future<Resource<List<InfoPokemonEntity>, ErrorApi>> useCaseInfoPokeApi();
}

class UseCasePokeInfo implements AbstractUseCasePokeInfo {
  @override
  Future<Resource<List<InfoPokemonEntity>, ErrorApi>>
      useCaseInfoPokeApi() async {
    final _repository = Modular.get<AbstractPokeInfoRepositoryApi>();

    final resource = await _repository.pokeInfoRepository();
    if (resource.hasError) {
      return Resource.failed(error: ErrorApi.apiError);
    }
    return Resource.success(data: resource.data);
  }
}
