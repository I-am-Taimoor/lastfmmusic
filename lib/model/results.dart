import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfmmusic/model/albums.dart';

part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class Results with _$Results {
  factory Results({
    Albums? albummatches,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
