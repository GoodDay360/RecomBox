// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchContentInfo {
  String get source;
  String get id;
  String get title;
  String get year;
  BigInt? get rank;
  String get thumbnailUrl;

  /// Create a copy of SearchContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchContentInfoCopyWith<SearchContentInfo> get copyWith =>
      _$SearchContentInfoCopyWithImpl<SearchContentInfo>(
          this as SearchContentInfo, _$identity);

  /// Serializes this SearchContentInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, id, title, year, rank, thumbnailUrl);

  @override
  String toString() {
    return 'SearchContentInfo(source: $source, id: $id, title: $title, year: $year, rank: $rank, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class $SearchContentInfoCopyWith<$Res> {
  factory $SearchContentInfoCopyWith(
          SearchContentInfo value, $Res Function(SearchContentInfo) _then) =
      _$SearchContentInfoCopyWithImpl;
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      String year,
      BigInt? rank,
      String thumbnailUrl});
}

/// @nodoc
class _$SearchContentInfoCopyWithImpl<$Res>
    implements $SearchContentInfoCopyWith<$Res> {
  _$SearchContentInfoCopyWithImpl(this._self, this._then);

  final SearchContentInfo _self;
  final $Res Function(SearchContentInfo) _then;

  /// Create a copy of SearchContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rank = freezed,
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
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchContentInfo].
extension SearchContentInfoPatterns on SearchContentInfo {
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
    TResult Function(_SearchContentInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo() when $default != null:
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
    TResult Function(_SearchContentInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo():
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
    TResult? Function(_SearchContentInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo() when $default != null:
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
            BigInt? rank, String thumbnailUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rank, _that.thumbnailUrl);
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
            BigInt? rank, String thumbnailUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo():
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rank, _that.thumbnailUrl);
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
            BigInt? rank, String thumbnailUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.year,
            _that.rank, _that.thumbnailUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchContentInfo implements SearchContentInfo {
  const _SearchContentInfo(
      {required this.source,
      required this.id,
      required this.title,
      required this.year,
      this.rank,
      required this.thumbnailUrl});
  factory _SearchContentInfo.fromJson(Map<String, dynamic> json) =>
      _$SearchContentInfoFromJson(json);

  @override
  final String source;
  @override
  final String id;
  @override
  final String title;
  @override
  final String year;
  @override
  final BigInt? rank;
  @override
  final String thumbnailUrl;

  /// Create a copy of SearchContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchContentInfoCopyWith<_SearchContentInfo> get copyWith =>
      __$SearchContentInfoCopyWithImpl<_SearchContentInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchContentInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, id, title, year, rank, thumbnailUrl);

  @override
  String toString() {
    return 'SearchContentInfo(source: $source, id: $id, title: $title, year: $year, rank: $rank, thumbnailUrl: $thumbnailUrl)';
  }
}

/// @nodoc
abstract mixin class _$SearchContentInfoCopyWith<$Res>
    implements $SearchContentInfoCopyWith<$Res> {
  factory _$SearchContentInfoCopyWith(
          _SearchContentInfo value, $Res Function(_SearchContentInfo) _then) =
      __$SearchContentInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      String year,
      BigInt? rank,
      String thumbnailUrl});
}

/// @nodoc
class __$SearchContentInfoCopyWithImpl<$Res>
    implements _$SearchContentInfoCopyWith<$Res> {
  __$SearchContentInfoCopyWithImpl(this._self, this._then);

  final _SearchContentInfo _self;
  final $Res Function(_SearchContentInfo) _then;

  /// Create a copy of SearchContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? year = null,
    Object? rank = freezed,
    Object? thumbnailUrl = null,
  }) {
    return _then(_SearchContentInfo(
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
      rank: freezed == rank
          ? _self.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
