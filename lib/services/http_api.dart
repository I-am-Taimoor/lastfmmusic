import 'dart:core';
import 'dart:io';

import 'package:http/http.dart' as http;

class HttpApi {
  // var authService = locator<AuthorizationService>();
  Future<Map<String, String>> get _headers async {
    // var user = authService.currentUser;
    // var token = user?.token ?? '';
    return {
      HttpHeaders.contentTypeHeader: ContentType.json.toString(),
      // HttpHeaders.authorizationHeader: 'Bearer $token',
      HttpHeaders.userAgentHeader: Platform.isIOS ? 'ios' : 'android'
    };
  }

  Uri _getEndpointUri(String endpoint, [Map<String, dynamic>? queryParams]) {
    const String _serverUrl = 'ws.audioscrobbler.com';
    //environmentService.getValue('SERVER_URL');
    return Uri.http(_serverUrl, endpoint, queryParams);
  }

  Future<http.Response> get(String endpoint,
      [Map<String, dynamic>? queryParams]) async {
    return http.get(
      _getEndpointUri(endpoint, queryParams),
      headers: await _headers,
    );
  }

  Future<http.Response> put(String endpoint, {required String body}) async {
    return http.put(
      _getEndpointUri(endpoint),
      headers: await _headers,
      body: body,
    );
  }

  Future<http.Response> post(String endpoint, {required String body}) async {
    return await http.post(
      _getEndpointUri(endpoint),
      headers: await _headers,
      body: body,
    );
  }

  Future<http.Response> patch(String endpoint, {required String body}) async {
    return await http.patch(
      _getEndpointUri(endpoint),
      headers: await _headers,
      body: body,
    );
  }
}
