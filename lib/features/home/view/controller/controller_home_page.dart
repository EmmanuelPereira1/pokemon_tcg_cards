import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';

import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import 'package:pokemon_tcg_cards/features/home/domain/use_cases/home_use_case.dart';
part 'controller_home_page.g.dart';

class ControllerHomePage = _ControllerHomePageBase with _$ControllerHomePage;

abstract class _ControllerHomePageBase with Store {
  final _listPokemon = Modular.get<AbstractUserCaseHome>();

  @observable
  String query = '';

  @action
  void querySearch(newValue) => query = newValue;

  @observable
  Resource<List<HomeEntity>, ErrorApi> loading = Resource.loading();

  @action
  Future<Resource<void, ErrorApi>> listCards() async {
    final resource = await _listPokemon.userCaseApi(query);

    if (resource.hasError) {
      return Resource.failed(error: ErrorApi.apiError);
    } else {
      loading = resource;
      return Resource.success();
    }
  }
}
