import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/data_sources/home_data_source.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';
import 'package:pokemon_tcg_cards/features/home/domain/entities/home_entity.dart';

abstract class AbstractRepositoryApi {
  Future<Resource<HomeEntity,ErrorApi>> homeRepository(
 String? id,
  String? name,
  List<String>? types,
  String? small,
  );
}

class RepositoryApi implements AbstractRepositoryApi {
  final _dataSource = Modular.get<AbstractHomeDataSource>();

  @override
   Future<Resource<HomeEntity,ErrorApi>> homeRepository(
  String? id,
  String? name,
  List<String>? types,
  String? small,
  ) async {
    final resource = await _dataSource.dataSourceApi(id, name, types, small);
    if(resource.hasError) {
      return Resource.failed(error: resource.error);
    }

    final homeJson = resource.data;
    final userEntity = HomeEntity.fromJson(homeJson!);
    return Resource.success(data: userEntity);
  }
}