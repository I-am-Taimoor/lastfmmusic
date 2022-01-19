import 'dart:convert';
import 'package:lastfmmusic/model/result.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class Search with ReactiveServiceMixin {
  String searchKeyword = '';

  Map<String, dynamic> getQueryParamsForSearch() {
    Map<String, dynamic> queryParams = {};
    queryParams['method'] = 'album.search';
    queryParams['album'] = searchKeyword;
    queryParams['api_key'] = '089c31301ce05917485e73b412ed0877';
    queryParams['format'] = 'json';
    return queryParams;
  }

  Future<Result> getAlbums() async {
    // var httpApi = locator<HttpApi>();
    http.Response response = await http.post(
      Uri.parse(
          'http://ws.audioscrobbler.com/2.0/?method=album.search&album=$searchKeyword&api_key=089c31301ce05917485e73b412ed0877&format=json'),
      body: '',
    );
    if (response.statusCode != 200) {
      throw Exception(
          'Result not found with status code ${response.statusCode}');
    }
    var properties = Result.fromJson(jsonDecode(response.body));

    return properties;
  }
}
