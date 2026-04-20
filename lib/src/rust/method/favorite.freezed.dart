// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryMap {
  Map<BigInt, String> get field0;

  /// Create a copy of CategoryMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryMapCopyWith<CategoryMap> get copyWith =>
      _$CategoryMapCopyWithImpl<CategoryMap>(this as CategoryMap, _$identity);

  /// Serializes this CategoryMap to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryMap &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'CategoryMap(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $CategoryMapCopyWith<$Res> {
  factory $CategoryMapCopyWith(
          CategoryMap value, $Res Function(CategoryMap) _then) =
      _$CategoryMapCopyWithImpl;
  @useResult
  $Res call({Map<BigInt, String> field0});
}

/// @nodoc
class _$CategoryMapCopyWithImpl<$Res> implements $CategoryMapCopyWith<$Res> {
  _$CategoryMapCopyWithImpl(this._self, this._then);

  final CategoryMap _self;
  final $Res Function(CategoryMap) _then;

  /// Create a copy of CategoryMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_self.copyWith(
      field0: null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<BigInt, String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryMap].
extension CategoryMapPatterns on CategoryMap {
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
    TResult Function(_CategoryMap value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryMap() when $default != null:
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
    TResult Function(_CategoryMap value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryMap():
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
    TResult? Function(_CategoryMap value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryMap() when $default != null:
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
    TResult Function(Map<BigInt, String> field0)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryMap() when $default != null:
        return $default(_that.field0);
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
    TResult Function(Map<BigInt, String> field0) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryMap():
        return $default(_that.field0);
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
    TResult? Function(Map<BigInt, String> field0)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryMap() when $default != null:
        return $default(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryMap implements CategoryMap {
  const _CategoryMap({required final Map<BigInt, String> field0})
      : _field0 = field0;
  factory _CategoryMap.fromJson(Map<String, dynamic> json) =>
      _$CategoryMapFromJson(json);

  final Map<BigInt, String> _field0;
  @override
  Map<BigInt, String> get field0 {
    if (_field0 is EqualUnmodifiableMapView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_field0);
  }

  /// Create a copy of CategoryMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryMapCopyWith<_CategoryMap> get copyWith =>
      __$CategoryMapCopyWithImpl<_CategoryMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryMapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryMap &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @override
  String toString() {
    return 'CategoryMap(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class _$CategoryMapCopyWith<$Res>
    implements $CategoryMapCopyWith<$Res> {
  factory _$CategoryMapCopyWith(
          _CategoryMap value, $Res Function(_CategoryMap) _then) =
      __$CategoryMapCopyWithImpl;
  @override
  @useResult
  $Res call({Map<BigInt, String> field0});
}

/// @nodoc
class __$CategoryMapCopyWithImpl<$Res> implements _$CategoryMapCopyWith<$Res> {
  __$CategoryMapCopyWithImpl(this._self, this._then);

  final _CategoryMap _self;
  final $Res Function(_CategoryMap) _then;

  /// Create a copy of CategoryMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_CategoryMap(
      field0: null == field0
          ? _self._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<BigInt, String>,
    ));
  }
}

/// @nodoc
mixin _$CategoryOrderMap {
  Map<BigInt, BigInt> get field0;

  /// Create a copy of CategoryOrderMap
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CategoryOrderMapCopyWith<CategoryOrderMap> get copyWith =>
      _$CategoryOrderMapCopyWithImpl<CategoryOrderMap>(
          this as CategoryOrderMap, _$identity);

  /// Serializes this CategoryOrderMap to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CategoryOrderMap &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'CategoryOrderMap(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $CategoryOrderMapCopyWith<$Res> {
  factory $CategoryOrderMapCopyWith(
          CategoryOrderMap value, $Res Function(CategoryOrderMap) _then) =
      _$CategoryOrderMapCopyWithImpl;
  @useResult
  $Res call({Map<BigInt, BigInt> field0});
}

/// @nodoc
class _$CategoryOrderMapCopyWithImpl<$Res>
    implements $CategoryOrderMapCopyWith<$Res> {
  _$CategoryOrderMapCopyWithImpl(this._self, this._then);

  final CategoryOrderMap _self;
  final $Res Function(CategoryOrderMap) _then;

  /// Create a copy of CategoryOrderMap
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_self.copyWith(
      field0: null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<BigInt, BigInt>,
    ));
  }
}

/// Adds pattern-matching-related methods to [CategoryOrderMap].
extension CategoryOrderMapPatterns on CategoryOrderMap {
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
    TResult Function(_CategoryOrderMap value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap() when $default != null:
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
    TResult Function(_CategoryOrderMap value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap():
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
    TResult? Function(_CategoryOrderMap value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap() when $default != null:
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
    TResult Function(Map<BigInt, BigInt> field0)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap() when $default != null:
        return $default(_that.field0);
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
    TResult Function(Map<BigInt, BigInt> field0) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap():
        return $default(_that.field0);
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
    TResult? Function(Map<BigInt, BigInt> field0)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _CategoryOrderMap() when $default != null:
        return $default(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _CategoryOrderMap implements CategoryOrderMap {
  const _CategoryOrderMap({required final Map<BigInt, BigInt> field0})
      : _field0 = field0;
  factory _CategoryOrderMap.fromJson(Map<String, dynamic> json) =>
      _$CategoryOrderMapFromJson(json);

  final Map<BigInt, BigInt> _field0;
  @override
  Map<BigInt, BigInt> get field0 {
    if (_field0 is EqualUnmodifiableMapView) return _field0;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_field0);
  }

  /// Create a copy of CategoryOrderMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CategoryOrderMapCopyWith<_CategoryOrderMap> get copyWith =>
      __$CategoryOrderMapCopyWithImpl<_CategoryOrderMap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CategoryOrderMapToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryOrderMap &&
            const DeepCollectionEquality().equals(other._field0, _field0));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_field0));

  @override
  String toString() {
    return 'CategoryOrderMap(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class _$CategoryOrderMapCopyWith<$Res>
    implements $CategoryOrderMapCopyWith<$Res> {
  factory _$CategoryOrderMapCopyWith(
          _CategoryOrderMap value, $Res Function(_CategoryOrderMap) _then) =
      __$CategoryOrderMapCopyWithImpl;
  @override
  @useResult
  $Res call({Map<BigInt, BigInt> field0});
}

/// @nodoc
class __$CategoryOrderMapCopyWithImpl<$Res>
    implements _$CategoryOrderMapCopyWith<$Res> {
  __$CategoryOrderMapCopyWithImpl(this._self, this._then);

  final _CategoryOrderMap _self;
  final $Res Function(_CategoryOrderMap) _then;

  /// Create a copy of CategoryOrderMap
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_CategoryOrderMap(
      field0: null == field0
          ? _self._field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Map<BigInt, BigInt>,
    ));
  }
}

/// @nodoc
mixin _$ItemInfo {
  String get source;
  String get id;

  /// Create a copy of ItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ItemInfoCopyWith<ItemInfo> get copyWith =>
      _$ItemInfoCopyWithImpl<ItemInfo>(this as ItemInfo, _$identity);

  /// Serializes this ItemInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ItemInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id);

  @override
  String toString() {
    return 'ItemInfo(source: $source, id: $id)';
  }
}

/// @nodoc
abstract mixin class $ItemInfoCopyWith<$Res> {
  factory $ItemInfoCopyWith(ItemInfo value, $Res Function(ItemInfo) _then) =
      _$ItemInfoCopyWithImpl;
  @useResult
  $Res call({String source, String id});
}

/// @nodoc
class _$ItemInfoCopyWithImpl<$Res> implements $ItemInfoCopyWith<$Res> {
  _$ItemInfoCopyWithImpl(this._self, this._then);

  final ItemInfo _self;
  final $Res Function(ItemInfo) _then;

  /// Create a copy of ItemInfo
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

/// Adds pattern-matching-related methods to [ItemInfo].
extension ItemInfoPatterns on ItemInfo {
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
    TResult Function(_ItemInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ItemInfo() when $default != null:
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
    TResult Function(_ItemInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemInfo():
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
    TResult? Function(_ItemInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ItemInfo() when $default != null:
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
      case _ItemInfo() when $default != null:
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
      case _ItemInfo():
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
      case _ItemInfo() when $default != null:
        return $default(_that.source, _that.id);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ItemInfo implements ItemInfo {
  const _ItemInfo({required this.source, required this.id});
  factory _ItemInfo.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoFromJson(json);

  @override
  final String source;
  @override
  final String id;

  /// Create a copy of ItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ItemInfoCopyWith<_ItemInfo> get copyWith =>
      __$ItemInfoCopyWithImpl<_ItemInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ItemInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItemInfo &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, source, id);

  @override
  String toString() {
    return 'ItemInfo(source: $source, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$ItemInfoCopyWith<$Res>
    implements $ItemInfoCopyWith<$Res> {
  factory _$ItemInfoCopyWith(_ItemInfo value, $Res Function(_ItemInfo) _then) =
      __$ItemInfoCopyWithImpl;
  @override
  @useResult
  $Res call({String source, String id});
}

/// @nodoc
class __$ItemInfoCopyWithImpl<$Res> implements _$ItemInfoCopyWith<$Res> {
  __$ItemInfoCopyWithImpl(this._self, this._then);

  final _ItemInfo _self;
  final $Res Function(_ItemInfo) _then;

  /// Create a copy of ItemInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? source = null,
    Object? id = null,
  }) {
    return _then(_ItemInfo(
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

// dart format on
