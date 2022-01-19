// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'albums.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Albums _$AlbumsFromJson(Map<String, dynamic> json) {
  return _Albums.fromJson(json);
}

/// @nodoc
class _$AlbumsTearOff {
  const _$AlbumsTearOff();

  _Albums call({List<Album>? album}) {
    return _Albums(
      album: album,
    );
  }

  Albums fromJson(Map<String, Object> json) {
    return Albums.fromJson(json);
  }
}

/// @nodoc
const $Albums = _$AlbumsTearOff();

/// @nodoc
mixin _$Albums {
  List<Album>? get album => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumsCopyWith<Albums> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsCopyWith<$Res> {
  factory $AlbumsCopyWith(Albums value, $Res Function(Albums) then) =
      _$AlbumsCopyWithImpl<$Res>;
  $Res call({List<Album>? album});
}

/// @nodoc
class _$AlbumsCopyWithImpl<$Res> implements $AlbumsCopyWith<$Res> {
  _$AlbumsCopyWithImpl(this._value, this._then);

  final Albums _value;
  // ignore: unused_field
  final $Res Function(Albums) _then;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
    ));
  }
}

/// @nodoc
abstract class _$AlbumsCopyWith<$Res> implements $AlbumsCopyWith<$Res> {
  factory _$AlbumsCopyWith(_Albums value, $Res Function(_Albums) then) =
      __$AlbumsCopyWithImpl<$Res>;
  @override
  $Res call({List<Album>? album});
}

/// @nodoc
class __$AlbumsCopyWithImpl<$Res> extends _$AlbumsCopyWithImpl<$Res>
    implements _$AlbumsCopyWith<$Res> {
  __$AlbumsCopyWithImpl(_Albums _value, $Res Function(_Albums) _then)
      : super(_value, (v) => _then(v as _Albums));

  @override
  _Albums get _value => super._value as _Albums;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_Albums(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as List<Album>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Albums implements _Albums {
  _$_Albums({this.album});

  factory _$_Albums.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumsFromJson(json);

  @override
  final List<Album>? album;

  @override
  String toString() {
    return 'Albums(album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Albums &&
            (identical(other.album, album) ||
                const DeepCollectionEquality().equals(other.album, album)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(album);

  @JsonKey(ignore: true)
  @override
  _$AlbumsCopyWith<_Albums> get copyWith =>
      __$AlbumsCopyWithImpl<_Albums>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumsToJson(this);
  }
}

abstract class _Albums implements Albums {
  factory _Albums({List<Album>? album}) = _$_Albums;

  factory _Albums.fromJson(Map<String, dynamic> json) = _$_Albums.fromJson;

  @override
  List<Album>? get album => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumsCopyWith<_Albums> get copyWith => throw _privateConstructorUsedError;
}
