import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class InstagramPerfilCall {
  static Future<ApiCallResponse> call({
    String? username = 'dangon2016',
    String? token =
        'IGQVJXMHduek5ua0JIRk41OEIzNkk0WTlTSW9nQ0xNTjhzUkpldXRJTjRudmZAjSmJSS1E1dndjQnRyb2R4U0R0S24yZAUFXVVJPOWtoZAUg1dFBUWGluUDdUYzc4WDQyMVpvdlp0TXA4cUdwWlR1c0s5UAZDZD',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'instagramPerfil',
      apiUrl:
          'https://graph.instagram.com/me/media?fields=id,caption&access_token=',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'USERNAME': username,
        'TOKEN': token,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
