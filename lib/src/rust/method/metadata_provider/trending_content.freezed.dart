// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TrendingContentInfo {
  String get source;
  String get id;
  String get title;
  String get year;
  double get rating;
  String get thumbnailUrl;

  /// Create a copy of TrendingContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrendingContentInfoCopyWith<TrendingContentInfo> get copyWith =>
      _$TrendingContentInfoCopyWithImpl<TrendingContentInfo>(
          this as TrendingContentInfo, _$identity);

  /// Serializes this TrendingContentInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrendingContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, id, title, year, rating, thumbnailUrl);

  @override
  String toString() {
    return 'TrendingContentInfo(source: $source, id: $id, title: $title, year: $year, rating: $rating, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $TrendingContentInfoCopyWith<$Res> {
  factory $TrendingContentInfoCopyWith(
          TrendingContentInfo value, $Res Function(TrendingContentInfo) _then) =
      _$TrendingContentInfoCopyWithImpl;
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      String year,
      double rating,
      String thumbnailUrl});
}

/// @nodoc
class _$TrendingContentInfoCopyWithImpl<$Res>
    implements $TrendingContentInfoCopyWith<$Res> {
  _$TrendingContentInfoCopyWithImpl(this._self, this._then);

  final TrendingContentInfo _self;
  final $Res Function(TrendingContentInfo) _then;

  /// Create a copy of TrendingContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rating = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_self.copyWith(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrendingContentInfo].
extension TrendingContentInfoPatterns on TrendingContentInfo {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrendingContentInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrendingContentInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo():
        return $default(_that);
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrendingContentInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String source, String id, String title, String year,
            double rating, String thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rating, _that.thumbnailUrl);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String source, String id, String title, String year,
            double rating, String thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo():
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rating, _that.thumbnailUrl);
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String source, String id, String title, String year,
            double rating, String thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrendingContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rating, _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TrendingContentInfo implements TrendingContentInfo {
  const _TrendingContentInfo(
      {required this.source,
      required this.id,
      required this.title,
      required this.year,
      required this.rating,
      required this.thumbnailUrl});
  factory _TrendingContentInfo.fromJson(Map<String, dynamic> json) =>
      _$TrendingContentInfoFromJson(json);

  @override
  final String source;
  @override
  final String id;
  @override
  final String title;
  @override
  final String year;
  @override
  final double rating;
  @override
  final String thumbnailUrl;

  /// Create a copy of TrendingContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrendingContentInfoCopyWith<_TrendingContentInfo> get copyWith =>
      __$TrendingContentInfoCopyWithImpl<_TrendingContentInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TrendingContentInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrendingContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, id, title, year, rating, thumbnailUrl);

  @override
  String toString() {
    return 'TrendingContentInfo(source: $source, id: $id, title: $title, year: $year, rating: $rating, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$TrendingContentInfoCopyWith<$Res>
    implements $TrendingContentInfoCopyWith<$Res> {
  factory _$TrendingContentInfoCopyWith(_TrendingContentInfo value,
          $Res Function(_TrendingContentInfo) _then) =
      __$TrendingContentInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      String year,
      double rating,
      String thumbnailUrl});
}

/// @nodoc
class __$TrendingContentInfoCopyWithImpl<$Res>
    implements _$TrendingContentInfoCopyWith<$Res> {
  __$TrendingContentInfoCopyWithImpl(this._self, this._then);

  final _TrendingContentInfo _self;
  final $Res Function(_TrendingContentInfo) _then;

  /// Create a copy of TrendingContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rating = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_TrendingContentInfo(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      year: null == year
          ? _self.year
          : year // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
