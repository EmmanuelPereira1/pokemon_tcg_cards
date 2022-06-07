import 'dart:html';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/constants/api_connect.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';

import '../../../../core/adapters/remote_client/remote_client.dart';

abstract class AbstractHomeDataSource {
  Future<Resource<Map<String, dynamic>, ErrorApi>> dataSourceApi (

    );
}

class HomeDataSource implements AbstractHomeDataSource {
  final _remoteClient = Modular.get<RemoteClient>();
Future<Resource<Map<String, dynamic>, ErrorApi>> dataSourceApi (
) async {
  final response = await _remoteClient.get(
    ApiConnect.baseUrl
    );
  // {
  //   'name' : name,
  //   'id' : id,
  //   'types' : types,
  //   'rules' : rules,
  //   'images' : images,
  //   'small' : small
  // });
  if (response.statusCode != 200) {
    return Resource.failed(error: ErrorApi.apiError);
  }
  return Resource.success(data: response.data);
}
}