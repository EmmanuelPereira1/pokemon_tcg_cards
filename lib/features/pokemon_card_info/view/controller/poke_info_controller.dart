import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/domain/Entities/info_card_entity.dart';
import 'package:pokemon_tcg_cards/features/pokemon_card_info/domain/use_cases_infocard/poke_info_use_case.dart';
part 'poke_info_controller.g.dart';

class PokeInfoController = _PokeInfoControllerBase with _$PokeInfoController;

abstract class _PokeInfoControllerBase with Store {
  final _pokeInfo = Modular.get<AbstractUseCasePokeInfo>();

  @observable
  Resource<InfoPokemonEntity, ErrorApi> loading = Resource.loading();

  @observable
  bool isPageAtLoadingStatus = false;

  @action
  void setPageToLoadingStatus() => isPageAtLoadingStatus = true;

  @action
  
  Future<Resource<void, ErrorApi>> pokeInfo(String id) async {
    Future.delayed(Duration(seconds: 4));
    final resource = await _pokeInfo.useCaseInfoPokeApi(id);

    if (resource.hasError) {
      return Resource.failed(error: ErrorApi.apiError);
    }
    loading = resource;
    return Resource.success();
  }
}
