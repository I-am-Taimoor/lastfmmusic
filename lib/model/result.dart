import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lastfmmusic/model/results.dart';

part 'result.freezed.dart';
part 'result.g.dart';

@freezed
class Result with _$Result {
  factory Result({
    Results? results,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
