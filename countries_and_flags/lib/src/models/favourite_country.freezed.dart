// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteCountry {
  CountryApiModel get country => throw _privateConstructorUsedError;

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FavouriteCountryCopyWith<FavouriteCountry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteCountryCopyWith<$Res> {
  factory $FavouriteCountryCopyWith(
          FavouriteCountry value, $Res Function(FavouriteCountry) then) =
      _$FavouriteCountryCopyWithImpl<$Res, FavouriteCountry>;
  @useResult
  $Res call({CountryApiModel country});

  $CountryApiModelCopyWith<$Res> get country;
}

/// @nodoc
class _$FavouriteCountryCopyWithImpl<$Res, $Val extends FavouriteCountry>
    implements $FavouriteCountryCopyWith<$Res> {
  _$FavouriteCountryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryApiModel,
    ) as $Val);
  }

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CountryApiModelCopyWith<$Res> get country {
    return $CountryApiModelCopyWith<$Res>(_value.country, (value) {
      return _then(_value.copyWith(country: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavouriteCountryImplCopyWith<$Res>
    implements $FavouriteCountryCopyWith<$Res> {
  factory _$$FavouriteCountryImplCopyWith(_$FavouriteCountryImpl value,
          $Res Function(_$FavouriteCountryImpl) then) =
      __$$FavouriteCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CountryApiModel country});

  @override
  $CountryApiModelCopyWith<$Res> get country;
}

/// @nodoc
class __$$FavouriteCountryImplCopyWithImpl<$Res>
    extends _$FavouriteCountryCopyWithImpl<$Res, _$FavouriteCountryImpl>
    implements _$$FavouriteCountryImplCopyWith<$Res> {
  __$$FavouriteCountryImplCopyWithImpl(_$FavouriteCountryImpl _value,
      $Res Function(_$FavouriteCountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$FavouriteCountryImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as CountryApiModel,
    ));
  }
}

/// @nodoc

class _$FavouriteCountryImpl
    with DiagnosticableTreeMixin
    implements _FavouriteCountry {
  const _$FavouriteCountryImpl({required this.country});

  @override
  final CountryApiModel country;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavouriteCountry(country: $country)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavouriteCountry'))
      ..add(DiagnosticsProperty('country', country));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteCountryImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteCountryImplCopyWith<_$FavouriteCountryImpl> get copyWith =>
      __$$FavouriteCountryImplCopyWithImpl<_$FavouriteCountryImpl>(
          this, _$identity);
}

abstract class _FavouriteCountry implements FavouriteCountry {
  const factory _FavouriteCountry({required final CountryApiModel country}) =
      _$FavouriteCountryImpl;

  @override
  CountryApiModel get country;

  /// Create a copy of FavouriteCountry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FavouriteCountryImplCopyWith<_$FavouriteCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
