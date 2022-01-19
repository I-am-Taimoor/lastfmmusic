import 'package:lastfmmusic/app/app.locator.dart';
import 'package:lastfmmusic/model/album.dart';
import 'package:lastfmmusic/services/search.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  String searchKeyword = '';
  List<Album> albumList = [];
  setSearchKeywords(String value) {
    searchKeyword = value;
    locator<Search>().searchKeyword = searchKeyword;
    notifyListeners();
  }

  Future searchAlbum() async {
    var searchService = locator<Search>();
    var searchedAlbums = await searchService.getAlbums();
    var album = searchedAlbums.results?.albummatches?.album ?? [];
    albumList = [];
    for (var i in album) {
      albumList.add(i);
    }
    notifyListeners();
  }
}
