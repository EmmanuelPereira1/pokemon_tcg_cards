

import 'package:flutter_modular/flutter_modular.dart';
import 'package:pokemon_tcg_cards/core/adapters/remote_client/remote_client.dart';
import 'package:pokemon_tcg_cards/core/constants/api_connect.dart';
import '../../../../core/generics/resource.dart';
import '../search_error_api.dart';

abstract class AbstractSearchPokemonDataSource{
  Future<Resource<Map<String, dynamic>, SearchErrorApi>> fetchSearchPokemon(
  String? query);
}

class SearchPokemonDataSource implements AbstractSearchPokemonDataSource {
  final _remoteClient = Modular.get<RemoteClient>();

  @override
  Future<Resource<Map<String, dynamic>, SearchErrorApi>> fetchSearchPokemon( String? query) async {
    final response = await _remoteClient.get(
      ApiConnect.searchCards, // mudar aqui a requisicao
    );
    if (response.statusCode != 200) {
      return Resource.failed(error: SearchErrorApi.apiError);

    }
    return Resource.success(data: response.data);
  }
}