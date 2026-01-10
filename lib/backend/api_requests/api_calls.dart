import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Letify Chatbot API Group Code

class LetifyChatbotAPIGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static LetifyChatbotCall letifyChatbotCall = LetifyChatbotCall();
}

class LetifyChatbotCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = LetifyChatbotAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "You are a helpful assistant."  
    },
    {
      "role": "user",
      "content": "Tell me about the HTTP 429 error."  
    }
  ],
  "max_tokens": 150,  
  "temperature": 0.7,  
  "top_p": 1,          
  "frequency_penalty": 0,
  "presence_penalty": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'letifyChatbot',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Letify Chatbot API Group Code

/// Start App Chatbot API Group Code

class AppChatbotAPIGroup {
  static String getBaseUrl() => 'https://api.openai.com/v1';
  static Map<String, String> headers = {};
  static SendChatMessageCall sendChatMessageCall = SendChatMessageCall();
}

class SendChatMessageCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
  }) async {
    final baseUrl = AppChatbotAPIGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": ""
    }
  ],
  "max_tokens": 0,
  "temperature": 0,
  "top_p": 0,
  "frequency_penalty": 0,
  "presence_penalty": 0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendChatMessage',
      apiUrl: '${baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End App Chatbot API Group Code

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

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
