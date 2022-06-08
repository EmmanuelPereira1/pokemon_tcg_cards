import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/data/repositories/repository.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import 'package:pokemon_tcg_cards/features/home/domain/use_cases/home_user_case.dart';
part 'controller_home_page.g.dart';

class ControllerHomePage = _ControllerHomePageBase with _$ControllerHomePage;

abstract class _ControllerHomePageBase with Store {

  final _listPokemon = Modular.get<AbstractUserCaseHome>();

  @observable 
  Resource<HomeEntity,ErrorApi> loading = Resource.loading();
  
  @observable
  String? id = 'id';

  @observable
  String? name = 'name';


  @observable
  List<String> types = ['types'];

  @observable
  String? small = 'small';

  @action
  void pokemonSmall(String newValue) => small = newValue;

  

@action
  Future<Resource<void, ErrorApi>> listCards(
  ) async {
    final resource = await _listPokemon.userCaseApi(id, name, types, small);
    if (resource.hasError) {
      return Resource.failed(error: ErrorApi.apiError);
    }
    // user = resource;
    return Resource.success();
  }
}