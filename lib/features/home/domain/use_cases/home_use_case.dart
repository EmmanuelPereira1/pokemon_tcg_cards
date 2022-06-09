import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/features/home/data/repositories/repository.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';
import '../../../../core/generics/resource.dart';
import '../../data/error_api.dart';

abstract class AbstractUserCaseHome {
  Future<Resource<List<HomeEntity>, ErrorApi>> userCaseApi();
}

class UserCaseHome implements AbstractUserCaseHome {
  @override
  Future<Resource<List<HomeEntity>, ErrorApi>> userCaseApi() async {
    final _respository = Modular.get<AbstractRepositoryApi>();

    final resource = await _respository.homeRepository();
    if (resource.hasError) {
      return Resource.failed(error: ErrorApi.apiError);
    }
    return Resource.success(data: resource.data);
  }
}
