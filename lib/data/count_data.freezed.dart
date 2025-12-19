// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'count_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CountData implements DiagnosticableTreeMixin {

 int get count; int get countUp; int get countDown;
/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CountDataCopyWith<CountData> get copyWith => _$CountDataCopyWithImpl<CountData>(this as CountData, _$identity);

  /// Serializes this CountData to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CountData'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('countUp', countUp))..add(DiagnosticsProperty('countDown', countDown));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CountData&&(identical(other.count, count) || other.count == count)&&(identical(other.countUp, countUp) || other.countUp == countUp)&&(identical(other.countDown, countDown) || other.countDown == countDown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,countUp,countDown);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CountData(count: $count, countUp: $countUp, countDown: $countDown)';
}


}

/// @nodoc
abstract mixin class $CountDataCopyWith<$Res>  {
  factory $CountDataCopyWith(CountData value, $Res Function(CountData) _then) = _$CountDataCopyWithImpl;
@useResult
$Res call({
 int count, int countUp, int countDown
});




}
/// @nodoc
class _$CountDataCopyWithImpl<$Res>
    implements $CountDataCopyWith<$Res> {
  _$CountDataCopyWithImpl(this._self, this._then);

  final CountData _self;
  final $Res Function(CountData) _then;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? countUp = null,Object? countDown = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,countUp: null == countUp ? _self.countUp : countUp // ignore: cast_nullable_to_non_nullable
as int,countDown: null == countDown ? _self.countDown : countDown // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CountData].
extension CountDataPatterns on CountData {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CountData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CountData value)  $default,){
final _that = this;
switch (_that) {
case _CountData():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CountData value)?  $default,){
final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int countUp,  int countDown)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that.count,_that.countUp,_that.countDown);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int countUp,  int countDown)  $default,) {final _that = this;
switch (_that) {
case _CountData():
return $default(_that.count,_that.countUp,_that.countDown);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int countUp,  int countDown)?  $default,) {final _that = this;
switch (_that) {
case _CountData() when $default != null:
return $default(_that.count,_that.countUp,_that.countDown);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CountData with DiagnosticableTreeMixin implements CountData {
  const _CountData({required this.count, required this.countUp, required this.countDown});
  factory _CountData.fromJson(Map<String, dynamic> json) => _$CountDataFromJson(json);

@override final  int count;
@override final  int countUp;
@override final  int countDown;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CountDataCopyWith<_CountData> get copyWith => __$CountDataCopyWithImpl<_CountData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CountDataToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'CountData'))
    ..add(DiagnosticsProperty('count', count))..add(DiagnosticsProperty('countUp', countUp))..add(DiagnosticsProperty('countDown', countDown));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CountData&&(identical(other.count, count) || other.count == count)&&(identical(other.countUp, countUp) || other.countUp == countUp)&&(identical(other.countDown, countDown) || other.countDown == countDown));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,countUp,countDown);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'CountData(count: $count, countUp: $countUp, countDown: $countDown)';
}


}

/// @nodoc
abstract mixin class _$CountDataCopyWith<$Res> implements $CountDataCopyWith<$Res> {
  factory _$CountDataCopyWith(_CountData value, $Res Function(_CountData) _then) = __$CountDataCopyWithImpl;
@override @useResult
$Res call({
 int count, int countUp, int countDown
});




}
/// @nodoc
class __$CountDataCopyWithImpl<$Res>
    implements _$CountDataCopyWith<$Res> {
  __$CountDataCopyWithImpl(this._self, this._then);

  final _CountData _self;
  final $Res Function(_CountData) _then;

/// Create a copy of CountData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? countUp = null,Object? countDown = null,}) {
  return _then(_CountData(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,countUp: null == countUp ? _self.countUp : countUp // ignore: cast_nullable_to_non_nullable
as int,countDown: null == countDown ? _self.countDown : countDown // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
