// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountData _$CountDataFromJson(Map<String, dynamic> json) => _CountData(
  count: (json['count'] as num).toInt(),
  countUp: (json['countUp'] as num).toInt(),
  countDown: (json['countDown'] as num).toInt(),
);

Map<String, dynamic> _$CountDataToJson(_CountData instance) =>
    <String, dynamic>{
      'count': instance.count,
      'countUp': instance.countUp,
      'countDown': instance.countDown,
    };
