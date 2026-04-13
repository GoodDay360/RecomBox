// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_torrents.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TorrentInfo {
  String get title;
  String get torrentUrl;

  /// Create a copy of TorrentInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TorrentInfoCopyWith<TorrentInfo> get copyWith =>
      _$TorrentInfoCopyWithImpl<TorrentInfo>(this as TorrentInfo, _$identity);

  /// Serializes this TorrentInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TorrentInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.torrentUrl, torrentUrl) ||
                other.torrentUrl == torrentUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, torrentUrl);

  @override
  String toString() {
    return 'TorrentInfo(title: $title, torrentUrl: $torrentUrl)';
  }
}

/// @nodoc
abstract mixin class $TorrentInfoCopyWith<$Res> {
  factory $TorrentInfoCopyWith(
          TorrentInfo value, $Res Function(TorrentInfo) _then) =
      _$TorrentInfoCopyWithImpl;
  @useResult
  $Res call({String title, String torrentUrl});
}

/// @nodoc
class _$TorrentInfoCopyWithImpl<$Res> implements $TorrentInfoCopyWith<$Res> {
  _$TorrentInfoCopyWithImpl(this._self, this._then);

  final TorrentInfo _self;
  final $Res Function(TorrentInfo) _then;

  /// Create a copy of TorrentInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? torrentUrl = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      torrentUrl: null == torrentUrl
          ? _self.torrentUrl
          : torrentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [TorrentInfo].
extension TorrentInfoPatterns on TorrentInfo {
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
    TResult Function(_TorrentInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo() when $default != null:
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
    TResult Function(_TorrentInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo():
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
    TResult? Function(_TorrentInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo() when $default != null:
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
    TResult Function(String title, String torrentUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo() when $default != null:
        return $default(_that.title, _that.torrentUrl);
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
    TResult Function(String title, String torrentUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo():
        return $default(_that.title, _that.torrentUrl);
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
    TResult? Function(String title, String torrentUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentInfo() when $default != null:
        return $default(_that.title, _that.torrentUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TorrentInfo implements TorrentInfo {
  const _TorrentInfo({required this.title, required this.torrentUrl});
  factory _TorrentInfo.fromJson(Map<String, dynamic> json) =>
      _$TorrentInfoFromJson(json);

  @override
  final String title;
  @override
  final String torrentUrl;

  /// Create a copy of TorrentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TorrentInfoCopyWith<_TorrentInfo> get copyWith =>
      __$TorrentInfoCopyWithImpl<_TorrentInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TorrentInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TorrentInfo &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.torrentUrl, torrentUrl) ||
                other.torrentUrl == torrentUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, torrentUrl);

  @override
  String toString() {
    return 'TorrentInfo(title: $title, torrentUrl: $torrentUrl)';
  }
}

/// @nodoc
abstract mixin class _$TorrentInfoCopyWith<$Res>
    implements $TorrentInfoCopyWith<$Res> {
  factory _$TorrentInfoCopyWith(
          _TorrentInfo value, $Res Function(_TorrentInfo) _then) =
      __$TorrentInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String title, String torrentUrl});
}

/// @nodoc
class __$TorrentInfoCopyWithImpl<$Res> implements _$TorrentInfoCopyWith<$Res> {
  __$TorrentInfoCopyWithImpl(this._self, this._then);

  final _TorrentInfo _self;
  final $Res Function(_TorrentInfo) _then;

  /// Create a copy of TorrentInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? torrentUrl = null,
  }) {
    return _then(_TorrentInfo(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      torrentUrl: null == torrentUrl
          ? _self.torrentUrl
          : torrentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
