// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckUpdate {
  String get latestVersion;
  String get downloadUrl;

  /// Create a copy of CheckUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckUpdateCopyWith<CheckUpdate> get copyWith =>
      _$CheckUpdateCopyWithImpl<CheckUpdate>(this as CheckUpdate, _$identity);

  /// Serializes this CheckUpdate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckUpdate &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latestVersion, downloadUrl);

  @override
  String toString() {
    return 'CheckUpdate(latestVersion: $latestVersion, downloadUrl: $downloadUrl)';
  }
}

/// @nodoc
abstract mixin class $CheckUpdateCopyWith<$Res> {
  factory $CheckUpdateCopyWith(
          CheckUpdate value, $Res Function(CheckUpdate) _then) =
      _$CheckUpdateCopyWithImpl;
  @useResult
  $Res call({String latestVersion, String downloadUrl});
}

/// @nodoc
class _$CheckUpdateCopyWithImpl<$Res> implements $CheckUpdateCopyWith<$Res> {
  _$CheckUpdateCopyWithImpl(this._self, this._then);

  final CheckUpdate _self;
  final $Res Function(CheckUpdate) _then;

  /// Create a copy of CheckUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestVersion = null,
    Object? downloadUrl = null,
  }) {
    return _then(_self.copyWith(
      latestVersion: null == latestVersion
          ? _self.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [CheckUpdate].
extension CheckUpdatePatterns on CheckUpdate {
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
    TResult Function(_CheckUpdate value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate() when $default != null:
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
    TResult Function(_CheckUpdate value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate():
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
    TResult? Function(_CheckUpdate value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate() when $default != null:
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
    TResult Function(String latestVersion, String downloadUrl)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate() when $default != null:
        return $default(_that.latestVersion, _that.downloadUrl);
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
    TResult Function(String latestVersion, String downloadUrl) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate():
        return $default(_that.latestVersion, _that.downloadUrl);
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
    TResult? Function(String latestVersion, String downloadUrl)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CheckUpdate() when $default != null:
        return $default(_that.latestVersion, _that.downloadUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CheckUpdate extends CheckUpdate {
  const _CheckUpdate({required this.latestVersion, required this.downloadUrl})
      : super._();
  factory _CheckUpdate.fromJson(Map<String, dynamic> json) =>
      _$CheckUpdateFromJson(json);

  @override
  final String latestVersion;
  @override
  final String downloadUrl;

  /// Create a copy of CheckUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckUpdateCopyWith<_CheckUpdate> get copyWith =>
      __$CheckUpdateCopyWithImpl<_CheckUpdate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckUpdateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckUpdate &&
            (identical(other.latestVersion, latestVersion) ||
                other.latestVersion == latestVersion) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, latestVersion, downloadUrl);

  @override
  String toString() {
    return 'CheckUpdate(latestVersion: $latestVersion, downloadUrl: $downloadUrl)';
  }
}

/// @nodoc
abstract mixin class _$CheckUpdateCopyWith<$Res>
    implements $CheckUpdateCopyWith<$Res> {
  factory _$CheckUpdateCopyWith(
          _CheckUpdate value, $Res Function(_CheckUpdate) _then) =
      __$CheckUpdateCopyWithImpl;
  @override
  @useResult
  $Res call({String latestVersion, String downloadUrl});
}

/// @nodoc
class __$CheckUpdateCopyWithImpl<$Res> implements _$CheckUpdateCopyWith<$Res> {
  __$CheckUpdateCopyWithImpl(this._self, this._then);

  final _CheckUpdate _self;
  final $Res Function(_CheckUpdate) _then;

  /// Create a copy of CheckUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? latestVersion = null,
    Object? downloadUrl = null,
  }) {
    return _then(_CheckUpdate(
      latestVersion: null == latestVersion
          ? _self.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: null == downloadUrl
          ? _self.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
