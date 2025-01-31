import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_flags.freezed.dart';
part 'country_flags.g.dart';

@freezed
class CountryFlags with _$CountryFlags {
  const factory CountryFlags({
    required String png,
    required String alt,
  }) = _CountryFlags;
  factory CountryFlags.fromJson(Map<String, dynamic> json) =>
      _$CountryFlagsFromJson(json);
}
