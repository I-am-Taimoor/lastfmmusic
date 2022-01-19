// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumImage _$AlbumImageFromJson(Map<String, dynamic> json) {
  return _AlbumImage.fromJson(json);
}

/// @nodoc
class _$AlbumImageTearOff {
  const _$AlbumImageTearOff();

  _AlbumImage call({String? text, String? size}) {
    return _AlbumImage(
      text: text,
      size: size,
    );
  }

  AlbumImage fromJson(Map<String, Object> json) {
    return AlbumImage.fromJson(json);
  }
}

/// @nodoc
const $AlbumImage = _$AlbumImageTearOff();

/// @nodoc
mixin _$AlbumImage {
  String? get text => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumImageCopyWith<AlbumImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumImageCopyWith<$Res> {
  factory $AlbumImageCopyWith(
          AlbumImage value, $Res Function(AlbumImage) then) =
      _$AlbumImageCopyWithImpl<$Res>;
  $Res call({String? text, String? size});
}

/// @nodoc
class _$AlbumImageCopyWithImpl<$Res> implements $AlbumImageCopyWith<$Res> {
  _$AlbumImageCopyWithImpl(this._value, this._then);

  final AlbumImage _value;
  // ignore: unused_field
  final $Res Function(AlbumImage) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AlbumImageCopyWith<$Res> implements $AlbumImageCopyWith<$Res> {
  factory _$AlbumImageCopyWith(
          _AlbumImage value, $Res Function(_AlbumImage) then) =
      __$AlbumImageCopyWithImpl<$Res>;
  @override
  $Res call({String? text, String? size});
}

/// @nodoc
class __$AlbumImageCopyWithImpl<$Res> extends _$AlbumImageCopyWithImpl<$Res>
    implements _$AlbumImageCopyWith<$Res> {
  __$AlbumImageCopyWithImpl(
      _AlbumImage _value, $Res Function(_AlbumImage) _then)
      : super(_value, (v) => _then(v as _AlbumImage));

  @override
  _AlbumImage get _value => super._value as _AlbumImage;

  @override
  $Res call({
    Object? text = freezed,
    Object? size = freezed,
  }) {
    return _then(_AlbumImage(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumImage implements _AlbumImage {
  _$_AlbumImage({this.text, this.size});

  factory _$_AlbumImage.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumImageFromJson(json);

  @override
  final String? text;
  @override
  final String? size;

  @override
  String toString() {
    return 'AlbumImage(text: $text, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AlbumImage &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$AlbumImageCopyWith<_AlbumImage> get copyWith =>
      __$AlbumImageCopyWithImpl<_AlbumImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumImageToJson(this);
  }
}

abstract class _AlbumImage implements AlbumImage {
  factory _AlbumImage({String? text, String? size}) = _$_AlbumImage;

  factory _AlbumImage.fromJson(Map<String, dynamic> json) =
      _$_AlbumImage.fromJson;

  @override
  String? get text => throw _privateConstructorUsedError;
  @override
  String? get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AlbumImageCopyWith<_AlbumImage> get copyWith =>
      throw _privateConstructorUsedError;
}
