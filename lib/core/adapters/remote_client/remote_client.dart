import 'package:dio/dio.dart';
import 'package:pokemon_tcg_cards/core/generics/response.dart';
import 'remote_error.dart';

abstract class RemoteClient {
  Future<ResponseApi<Map<String, dynamic>, RemoteClientError>> get(String url);
}

class ApiRemoteClient implements RemoteClient {
  final _dio = Dio();

  @override
   Future<ResponseApi<Map<String, dynamic>, RemoteClientError>> get(
    String url) async {
      try {
        final response = await _dio.get<Map<String, dynamic>>(url,
        options: Options(headers: {'X-Api-Key':'1dbdba6c-a648-4d3b-9ebb-cd9909692d27'}));
        if (response.statusCode != 200) {
          return ResponseApi(statusCode: response.statusCode!,
          error: RemoteClientError.badRequest);
        }
        return ResponseApi(statusCode: 200, data: response.data);
      } on DioError catch (_) {
        return ResponseApi(statusCode: 400, error: RemoteClientError.badRequest);
      }
    }
}