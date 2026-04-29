// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_all_download.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AllDownloadItemKey {
  String get source;
  String get id;

  /// Create a copy of AllDownloadItemKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllDownloadItemKeyCopyWith<AllDownloadItemKey> get copyWith =>
      _$AllDownloadItemKeyCopyWithImpl<AllDownloadItemKey>(
          this as AllDownloadItemKey, _$identity);

  /// Serializes this AllDownloadItemKey to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllDownloadItemKey &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id);

  @override
  String toString() {
    return 'AllDownloadItemKey(source: $source, id: $id)';
  }
}

/// @nodoc
abstract mixin class $AllDownloadItemKeyCopyWith<$Res> {
  factory $AllDownloadItemKeyCopyWith(
          AllDownloadItemKey value, $Res Function(AllDownloadItemKey) _then) =
      _$AllDownloadItemKeyCopyWithImpl;
  @useResult
  $Res call({String source, String id});
}

/// @nodoc
class _$AllDownloadItemKeyCopyWithImpl<$Res>
    implements $AllDownloadItemKeyCopyWith<$Res> {
  _$AllDownloadItemKeyCopyWithImpl(this._self, this._then);

  final AllDownloadItemKey _self;
  final $Res Function(AllDownloadItemKey) _then;

  /// Create a copy of AllDownloadItemKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? id = null,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [AllDownloadItemKey].
extension AllDownloadItemKeyPatterns on AllDownloadItemKey {
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
    TResult Function(_AllDownloadItemKey value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey() when $default != null:
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
    TResult Function(_AllDownloadItemKey value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey():
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
    TResult? Function(_AllDownloadItemKey value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey() when $default != null:
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
    TResult Function(String source, String id)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey() when $default != null:
        return $default(_that.source, _that.id);
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
    TResult Function(String source, String id) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey():
        return $default(_that.source, _that.id);
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
    TResult? Function(String source, String id)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemKey() when $default != null:
        return $default(_that.source, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AllDownloadItemKey implements AllDownloadItemKey {
  const _AllDownloadItemKey({required this.source, required this.id});
  factory _AllDownloadItemKey.fromJson(Map<String, dynamic> json) =>
      _$AllDownloadItemKeyFromJson(json);

  @override
  final String source;
  @override
  final String id;

  /// Create a copy of AllDownloadItemKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllDownloadItemKeyCopyWith<_AllDownloadItemKey> get copyWith =>
      __$AllDownloadItemKeyCopyWithImpl<_AllDownloadItemKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllDownloadItemKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllDownloadItemKey &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id);

  @override
  String toString() {
    return 'AllDownloadItemKey(source: $source, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$AllDownloadItemKeyCopyWith<$Res>
    implements $AllDownloadItemKeyCopyWith<$Res> {
  factory _$AllDownloadItemKeyCopyWith(
          _AllDownloadItemKey value, $Res Function(_AllDownloadItemKey) _then) =
      __$AllDownloadItemKeyCopyWithImpl;
  @override
  @useResult
  $Res call({String source, String id});
}

/// @nodoc
class __$AllDownloadItemKeyCopyWithImpl<$Res>
    implements _$AllDownloadItemKeyCopyWith<$Res> {
  __$AllDownloadItemKeyCopyWithImpl(this._self, this._then);

  final _AllDownloadItemKey _self;
  final $Res Function(_AllDownloadItemKey) _then;

  /// Create a copy of AllDownloadItemKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? id = null,
  }) {
    return _then(_AllDownloadItemKey(
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AllDownloadItemValue {
  BigInt get seasonIndex;
  BigInt get episodeIndex;

  /// Create a copy of AllDownloadItemValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AllDownloadItemValueCopyWith<AllDownloadItemValue> get copyWith =>
      _$AllDownloadItemValueCopyWithImpl<AllDownloadItemValue>(
          this as AllDownloadItemValue, _$identity);

  /// Serializes this AllDownloadItemValue to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AllDownloadItemValue &&
            (identical(other.seasonIndex, seasonIndex) ||
                other.seasonIndex == seasonIndex) &&
            (identical(other.episodeIndex, episodeIndex) ||
                other.episodeIndex == episodeIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seasonIndex, episodeIndex);

  @override
  String toString() {
    return 'AllDownloadItemValue(seasonIndex: $seasonIndex, episodeIndex: $episodeIndex)';
  }
}

/// @nodoc
abstract mixin class $AllDownloadItemValueCopyWith<$Res> {
  factory $AllDownloadItemValueCopyWith(AllDownloadItemValue value,
          $Res Function(AllDownloadItemValue) _then) =
      _$AllDownloadItemValueCopyWithImpl;
  @useResult
  $Res call({BigInt seasonIndex, BigInt episodeIndex});
}

/// @nodoc
class _$AllDownloadItemValueCopyWithImpl<$Res>
    implements $AllDownloadItemValueCopyWith<$Res> {
  _$AllDownloadItemValueCopyWithImpl(this._self, this._then);

  final AllDownloadItemValue _self;
  final $Res Function(AllDownloadItemValue) _then;

  /// Create a copy of AllDownloadItemValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? seasonIndex = null,
    Object? episodeIndex = null,
  }) {
    return _then(_self.copyWith(
      seasonIndex: null == seasonIndex
          ? _self.seasonIndex
          : seasonIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
      episodeIndex: null == episodeIndex
          ? _self.episodeIndex
          : episodeIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// Adds pattern-matching-related methods to [AllDownloadItemValue].
extension AllDownloadItemValuePatterns on AllDownloadItemValue {
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
    TResult Function(_AllDownloadItemValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue() when $default != null:
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
    TResult Function(_AllDownloadItemValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue():
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
    TResult? Function(_AllDownloadItemValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue() when $default != null:
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
    TResult Function(BigInt seasonIndex, BigInt episodeIndex)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue() when $default != null:
        return $default(_that.seasonIndex, _that.episodeIndex);
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
    TResult Function(BigInt seasonIndex, BigInt episodeIndex) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue():
        return $default(_that.seasonIndex, _that.episodeIndex);
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
    TResult? Function(BigInt seasonIndex, BigInt episodeIndex)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AllDownloadItemValue() when $default != null:
        return $default(_that.seasonIndex, _that.episodeIndex);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AllDownloadItemValue implements AllDownloadItemValue {
  const _AllDownloadItemValue(
      {required this.seasonIndex, required this.episodeIndex});
  factory _AllDownloadItemValue.fromJson(Map<String, dynamic> json) =>
      _$AllDownloadItemValueFromJson(json);

  @override
  final BigInt seasonIndex;
  @override
  final BigInt episodeIndex;

  /// Create a copy of AllDownloadItemValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AllDownloadItemValueCopyWith<_AllDownloadItemValue> get copyWith =>
      __$AllDownloadItemValueCopyWithImpl<_AllDownloadItemValue>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AllDownloadItemValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllDownloadItemValue &&
            (identical(other.seasonIndex, seasonIndex) ||
                other.seasonIndex == seasonIndex) &&
            (identical(other.episodeIndex, episodeIndex) ||
                other.episodeIndex == episodeIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, seasonIndex, episodeIndex);

  @override
  String toString() {
    return 'AllDownloadItemValue(seasonIndex: $seasonIndex, episodeIndex: $episodeIndex)';
  }
}

/// @nodoc
abstract mixin class _$AllDownloadItemValueCopyWith<$Res>
    implements $AllDownloadItemValueCopyWith<$Res> {
  factory _$AllDownloadItemValueCopyWith(_AllDownloadItemValue value,
          $Res Function(_AllDownloadItemValue) _then) =
      __$AllDownloadItemValueCopyWithImpl;
  @override
  @useResult
  $Res call({BigInt seasonIndex, BigInt episodeIndex});
}

/// @nodoc
class __$AllDownloadItemValueCopyWithImpl<$Res>
    implements _$AllDownloadItemValueCopyWith<$Res> {
  __$AllDownloadItemValueCopyWithImpl(this._self, this._then);

  final _AllDownloadItemValue _self;
  final $Res Function(_AllDownloadItemValue) _then;

  /// Create a copy of AllDownloadItemValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? seasonIndex = null,
    Object? episodeIndex = null,
  }) {
    return _then(_AllDownloadItemValue(
      seasonIndex: null == seasonIndex
          ? _self.seasonIndex
          : seasonIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
      episodeIndex: null == episodeIndex
          ? _self.episodeIndex
          : episodeIndex // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
