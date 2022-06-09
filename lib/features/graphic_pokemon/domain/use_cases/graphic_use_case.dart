import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/graphic_error_api.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/repository/graphic_pokemon_repository.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/domain/entities/graphic_entity.dart';
import '../../../../core/generics/resource.dart';

abstract class AbstractGraphicUseCase {
  Future<Resource<List<GraphicEntity>, GraphicErrorApi>> userCaseApi();
}

class GraphicUseCase implements AbstractGraphicUseCase {
  @override
  Future<Resource<List<GraphicEntity>, GraphicErrorApi>> userCaseApi() async {
    final _respository = Modular.get<AbstractGraphicRepository>();

    final resource = await _respository.homeRepository();
    if (resource.hasError) {
      return Resource.failed(error: GraphicErrorApi.apiError);
    }
    return Resource.success(data: resource.data);
  }
}