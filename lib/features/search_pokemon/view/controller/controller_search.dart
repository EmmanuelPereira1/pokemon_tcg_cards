import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/data/search_error_api.dart';
import 'package:pokemon_tcg_cards/features/search_pokemon/domain/use_cases/search_use_case.dart';

import '../../domain/entities/search_entity.dart';

part 'controller_search.g.dart';

class ControllerSearch = _ControllerSearchBase with _$ControllerSearch;

abstract class _ControllerSearchBase with Store {
  final _search = Modular.get<AbstractSearchUseCase>();

  @observable
  String query = '';

  @action
  void search(String newValue) => query = newValue;

  @observable
  Resource<List<SearchEntity>, SearchErrorApi> loading = Resource.loading();

  @action
  Future<Resource<List<SearchEntity>, SearchErrorApi>> searchPokemon({String? query}) async {
    final resource = await _search.userCaseSearchPokemon(query);

    if (resource.hasError) {
      return Resource.failed(error: SearchErrorApi.apiError);
    }
    loading = resource;
    return Resource.success();
  }
}
