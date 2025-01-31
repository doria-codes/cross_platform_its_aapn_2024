import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_name.freezed.dart';
part 'country_name.g.dart';

@freezed
class CountryName with _$CountryName {
  const factory CountryName({
    required String common,
    required String official,
  }) = _CountryName;
  factory CountryName.fromJson(Map<String, dynamic> json) =>
      _$CountryNameFromJson(json);
}
