

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/adapters/remote_client/remote_client.dart';
import 'package:pokemon_tcg_cards/core/constants/api_connect.dart';
import 'package:pokemon_tcg_cards/features/graphic_pokemon/data/graphic_error_api.dart';
import '../../../../core/generics/resource.dart';

abstract class AbstractGraphicDataSource{
  Future<Resource<Map<String, dynamic>, GraphicErrorApi>> dataSourceApi();
}

class GraphicDataSource implements AbstractGraphicDataSource {
  final _remoteClient = Modular.get<RemoteClient>();

  @override
  Future<Resource<Map<String, dynamic>, GraphicErrorApi>> dataSourceApi() async {
    final response = await _remoteClient.get(
      ApiConnect.baseUrl,
    );
    if (response.statusCode != 200) {
      return Resource.failed(error: GraphicErrorApi.apiError);
    }
    return Resource.success(data: response.data);
  }
}