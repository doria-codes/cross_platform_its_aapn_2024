import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'country_name.dart';
import 'country_flags.dart';

part 'country_api_model.freezed.dart';
part 'country_api_model.g.dart';

@freezed
class CountryApiModel with _$CountryApiModel {
  const factory CountryApiModel({
    required CountryName name,
    required CountryFlags flags,
    required String cca2,
  }) = _CountryApiModel;
  factory CountryApiModel.fromJson(Map<String, dynamic> json) =>
      _$CountryApiModelFromJson(json);
}
