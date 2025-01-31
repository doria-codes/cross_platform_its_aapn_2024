// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryName _$CountryNameFromJson(Map<String, dynamic> json) {
  return _CountryName.fromJson(json);
}

/// @nodoc
mixin _$CountryName {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;

  /// Serializes this CountryName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryNameCopyWith<CountryName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryNameCopyWith<$Res> {
  factory $CountryNameCopyWith(
          CountryName value, $Res Function(CountryName) then) =
      _$CountryNameCopyWithImpl<$Res, CountryName>;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$CountryNameCopyWithImpl<$Res, $Val extends CountryName>
    implements $CountryNameCopyWith<$Res> {
  _$CountryNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryNameImplCopyWith<$Res>
    implements $CountryNameCopyWith<$Res> {
  factory _$$CountryNameImplCopyWith(
          _$CountryNameImpl value, $Res Function(_$CountryNameImpl) then) =
      __$$CountryNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$$CountryNameImplCopyWithImpl<$Res>
    extends _$CountryNameCopyWithImpl<$Res, _$CountryNameImpl>
    implements _$$CountryNameImplCopyWith<$Res> {
  __$$CountryNameImplCopyWithImpl(
      _$CountryNameImpl _value, $Res Function(_$CountryNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_$CountryNameImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryNameImpl with DiagnosticableTreeMixin implements _CountryName {
  const _$CountryNameImpl({required this.common, required this.official});

  factory _$CountryNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryNameImplFromJson(json);

  @override
  final String common;
  @override
  final String official;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryName(common: $common, official: $official)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryName'))
      ..add(DiagnosticsProperty('common', common))
      ..add(DiagnosticsProperty('official', official));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryNameImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryNameImplCopyWith<_$CountryNameImpl> get copyWith =>
      __$$CountryNameImplCopyWithImpl<_$CountryNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryNameImplToJson(
      this,
    );
  }
}

abstract class _CountryName implements CountryName {
  const factory _CountryName(
      {required final String common,
      required final String official}) = _$CountryNameImpl;

  factory _CountryName.fromJson(Map<String, dynamic> json) =
      _$CountryNameImpl.fromJson;

  @override
  String get common;
  @override
  String get official;

  /// Create a copy of CountryName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryNameImplCopyWith<_$CountryNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
