// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryApiModelImpl _$$CountryApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryApiModelImpl(
      name: CountryName.fromJson(json['name'] as Map<String, dynamic>),
      flags: CountryFlags.fromJson(json['flags'] as Map<String, dynamic>),
      cca2: json['cca2'] as String,
    );

Map<String, dynamic> _$$CountryApiModelImplToJson(
        _$CountryApiModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'flags': instance.flags,
      'cca2': instance.cca2,
    };
