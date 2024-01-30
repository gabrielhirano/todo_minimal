import 'dart:convert';
import 'package:http/http.dart';

enum AppHttpMethod { get, post, patch, put, delete }

abstract class BaseRepository {
  Future<Response> request(String uri, AppHttpMethod method, String id,
      {Map<String, dynamic>? headers, Map<String, dynamic>? body}) async {
    late Response response;

    response = switch (method) {
      AppHttpMethod.get => await get(Uri.parse(uri)),
      AppHttpMethod.post => await post(Uri.parse(uri)),
      AppHttpMethod.put => await put(Uri.parse(uri)),
      AppHttpMethod.patch => await patch(Uri.parse(uri)),
      AppHttpMethod.delete => await delete(Uri.parse(uri)),
    };

    if (response.statusCode == 200) {
      final Response data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception('Erro ao obter os dados.');
    }
  }
}
