import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/graphic_error_api.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/entities/graphic_entity.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/use_cases/graphic_use_case.dart';
part 'controller_graphic.g.dart';

class ControllerGraphic = _ControllerGraphicBase with _$ControllerGraphic;

abstract class _ControllerGraphicBase with Store {
  final _graphic = Modular.get<AbstractGraphicUseCase>();

  @observable
  Resource<GraphicEntity, GraphicErrorApi> loading = Resource.loading();

  @action
  Future<Resource<void, GraphicErrorApi>> pricePokemon(String id) async {
    final resource = await _graphic.userCasePricesPokemon(id);

    if (resource.hasError) {
      return Resource.failed(error: GraphicErrorApi.apiError);
    }
    loading = resource;
    return Resource.success();
  }
}
