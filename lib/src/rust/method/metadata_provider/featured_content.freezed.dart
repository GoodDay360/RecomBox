// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeaturedContentInfo {
  String get source;
  String get id;
  String get title;
  List<String> get contextual;
  String get shortDescription;
  String get bannerUrl;

  /// Create a copy of FeaturedContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeaturedContentInfoCopyWith<FeaturedContentInfo> get copyWith =>
      _$FeaturedContentInfoCopyWithImpl<FeaturedContentInfo>(
          this as FeaturedContentInfo, _$identity);

  /// Serializes this FeaturedContentInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeaturedContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other.contextual, contextual) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      id,
      title,
      const DeepCollectionEquality().hash(contextual),
      shortDescription,
      bannerUrl);

  @override
  String toString() {
    return 'FeaturedContentInfo(source: $source, id: $id, title: $title, contextual: $contextual, shortDescription: $shortDescription, bannerUrl: $bannerUrl)';
  }
}

/// @nodoc
abstract mixin class $FeaturedContentInfoCopyWith<$Res> {
  factory $FeaturedContentInfoCopyWith(
          FeaturedContentInfo value, $Res Function(FeaturedContentInfo) _then) =
      _$FeaturedContentInfoCopyWithImpl;
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      List<String> contextual,
      String shortDescription,
      String bannerUrl});
}

/// @nodoc
class _$FeaturedContentInfoCopyWithImpl<$Res>
    implements $FeaturedContentInfoCopyWith<$Res> {
  _$FeaturedContentInfoCopyWithImpl(this._self, this._then);

  final FeaturedContentInfo _self;
  final $Res Function(FeaturedContentInfo) _then;

  /// Create a copy of FeaturedContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? contextual = null,
    Object? shortDescription = null,
    Object? bannerUrl = null,
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
      contextual: null == contextual
          ? _self.contextual
          : contextual // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shortDescription: null == shortDescription
          ? _self.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _self.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeaturedContentInfo].
extension FeaturedContentInfoPatterns on FeaturedContentInfo {
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
    TResult Function(_FeaturedContentInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo() when $default != null:
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
    TResult Function(_FeaturedContentInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo():
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
    TResult? Function(_FeaturedContentInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo() when $default != null:
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
    TResult Function(String source, String id, String title,
            List<String> contextual, String shortDescription, String bannerUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.contextual,
            _that.shortDescription, _that.bannerUrl);
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
    TResult Function(String source, String id, String title,
            List<String> contextual, String shortDescription, String bannerUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo():
        return $default(_that.source, _that.id, _that.title, _that.contextual,
            _that.shortDescription, _that.bannerUrl);
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
    TResult? Function(String source, String id, String title,
            List<String> contextual, String shortDescription, String bannerUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeaturedContentInfo() when $default != null:
        return $default(_that.source, _that.id, _that.title, _that.contextual,
            _that.shortDescription, _that.bannerUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FeaturedContentInfo implements FeaturedContentInfo {
  const _FeaturedContentInfo(
      {required this.source,
      required this.id,
      required this.title,
      required final List<String> contextual,
      required this.shortDescription,
      required this.bannerUrl})
      : _contextual = contextual;
  factory _FeaturedContentInfo.fromJson(Map<String, dynamic> json) =>
      _$FeaturedContentInfoFromJson(json);

  @override
  final String source;
  @override
  final String id;
  @override
  final String title;
  final List<String> _contextual;
  @override
  List<String> get contextual {
    if (_contextual is EqualUnmodifiableListView) return _contextual;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contextual);
  }

  @override
  final String shortDescription;
  @override
  final String bannerUrl;

  /// Create a copy of FeaturedContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeaturedContentInfoCopyWith<_FeaturedContentInfo> get copyWith =>
      __$FeaturedContentInfoCopyWithImpl<_FeaturedContentInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeaturedContentInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeaturedContentInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._contextual, _contextual) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.bannerUrl, bannerUrl) ||
                other.bannerUrl == bannerUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      source,
      id,
      title,
      const DeepCollectionEquality().hash(_contextual),
      shortDescription,
      bannerUrl);

  @override
  String toString() {
    return 'FeaturedContentInfo(source: $source, id: $id, title: $title, contextual: $contextual, shortDescription: $shortDescription, bannerUrl: $bannerUrl)';
  }
}

/// @nodoc
abstract mixin class _$FeaturedContentInfoCopyWith<$Res>
    implements $FeaturedContentInfoCopyWith<$Res> {
  factory _$FeaturedContentInfoCopyWith(_FeaturedContentInfo value,
          $Res Function(_FeaturedContentInfo) _then) =
      __$FeaturedContentInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String source,
      String id,
      String title,
      List<String> contextual,
      String shortDescription,
      String bannerUrl});
}

/// @nodoc
class __$FeaturedContentInfoCopyWithImpl<$Res>
    implements _$FeaturedContentInfoCopyWith<$Res> {
  __$FeaturedContentInfoCopyWithImpl(this._self, this._then);

  final _FeaturedContentInfo _self;
  final $Res Function(_FeaturedContentInfo) _then;

  /// Create a copy of FeaturedContentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? id = null,
    Object? title = null,
    Object? contextual = null,
    Object? shortDescription = null,
    Object? bannerUrl = null,
  }) {
    return _then(_FeaturedContentInfo(
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
      contextual: null == contextual
          ? _self._contextual
          : contextual // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shortDescription: null == shortDescription
          ? _self.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      bannerUrl: null == bannerUrl
          ? _self.bannerUrl
          : bannerUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
