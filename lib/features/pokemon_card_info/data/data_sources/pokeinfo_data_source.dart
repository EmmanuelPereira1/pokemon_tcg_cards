import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/constants/api_connect.dart';
import 'package:pokemon_tcg_cards/core/generics/resource.dart';
import 'package:pokemon_tcg_cards/features/home/data/error_api.dart';

import '../../../../../core/adapters/remote_client/remote_client.dart';

abstract class AbstractPokeInfoDataSource {
  Future<Resource<Map<String, dynamic>, ErrorApi>> fetchPokemonCardDetails(String id);
}

class PokeInfoDataSource implements AbstractPokeInfoDataSource {
  final _remoteClient = Modular.get<RemoteClient>();

  @override
  Future<Resource<Map<String, dynamic>, ErrorApi>> fetchPokemonCardDetails(String id) async {
    final response = await _remoteClient.get(
      ApiConnect.baseUrl + id,
    );
    if (response.statusCode != 200) {
      return Resource.failed(error: ErrorApi.apiError);
    }
    return Resource.success(data: response.data);
  }
}