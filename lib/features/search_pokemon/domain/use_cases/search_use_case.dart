import 'package:flutter_modular/flutter_modular.dart';

import 'package:pokemon_tcg_cards/features/search_pokemon/data/repository/search_pokemon_repository.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/data/search_error_api.dart';
import '../../../../core/generics/resource.dart';
import '../entities/search_entity.dart';

abstract class AbstractSearchUseCase {
  Future<Resource<List<SearchEntity>, SearchErrorApi>> userCaseSearchPokemon(
       String? query);
}

class SearchUseCase implements AbstractSearchUseCase {
  @override
  Future<Resource<List<SearchEntity>, SearchErrorApi>> userCaseSearchPokemon(
       String? query) async {
    final _respository = Modular.get<AbstractSearchPokemonRepository>();

    final resource = await _respository.fetchSearchPokemon(query);
    if (resource.hasError) {
      return Resource.failed(error: SearchErrorApi.apiError);
    }
    return Resource.success(data: resource.data);
  }
}
