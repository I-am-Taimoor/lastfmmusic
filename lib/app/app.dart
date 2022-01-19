import 'package:lastfmmusic/services/http_api.dart';
import 'package:lastfmmusic/services/search.dart';
import 'package:lastfmmusic/ui/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: HttpApi),
    LazySingleton(classType: Search),
  ],
)
class AppSetup {}
