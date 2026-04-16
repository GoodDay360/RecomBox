// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_torrent_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FileInfo {
  BigInt get id;
  String? get path;
  BigInt? get length;
  String? get sha1;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FileInfoCopyWith<FileInfo> get copyWith =>
      _$FileInfoCopyWithImpl<FileInfo>(this as FileInfo, _$identity);

  /// Serializes this FileInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FileInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.sha1, sha1) || other.sha1 == sha1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, length, sha1);

  @override
  String toString() {
    return 'FileInfo(id: $id, path: $path, length: $length, sha1: $sha1)';
  }
}

/// @nodoc
abstract mixin class $FileInfoCopyWith<$Res> {
  factory $FileInfoCopyWith(FileInfo value, $Res Function(FileInfo) _then) =
      _$FileInfoCopyWithImpl;
  @useResult
  $Res call({BigInt id, String? path, BigInt? length, String? sha1});
}

/// @nodoc
class _$FileInfoCopyWithImpl<$Res> implements $FileInfoCopyWith<$Res> {
  _$FileInfoCopyWithImpl(this._self, this._then);

  final FileInfo _self;
  final $Res Function(FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? path = freezed,
    Object? length = freezed,
    Object? sha1 = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      sha1: freezed == sha1
          ? _self.sha1
          : sha1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FileInfo].
extension FileInfoPatterns on FileInfo {
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
    TResult Function(_FileInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
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
    TResult Function(_FileInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo():
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
    TResult? Function(_FileInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
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
    TResult Function(BigInt id, String? path, BigInt? length, String? sha1)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that.id, _that.path, _that.length, _that.sha1);
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
    TResult Function(BigInt id, String? path, BigInt? length, String? sha1)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo():
        return $default(_that.id, _that.path, _that.length, _that.sha1);
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
    TResult? Function(BigInt id, String? path, BigInt? length, String? sha1)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FileInfo() when $default != null:
        return $default(_that.id, _that.path, _that.length, _that.sha1);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FileInfo implements FileInfo {
  const _FileInfo({required this.id, this.path, this.length, this.sha1});
  factory _FileInfo.fromJson(Map<String, dynamic> json) =>
      _$FileInfoFromJson(json);

  @override
  final BigInt id;
  @override
  final String? path;
  @override
  final BigInt? length;
  @override
  final String? sha1;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FileInfoCopyWith<_FileInfo> get copyWith =>
      __$FileInfoCopyWithImpl<_FileInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FileInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FileInfo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.sha1, sha1) || other.sha1 == sha1));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, path, length, sha1);

  @override
  String toString() {
    return 'FileInfo(id: $id, path: $path, length: $length, sha1: $sha1)';
  }
}

/// @nodoc
abstract mixin class _$FileInfoCopyWith<$Res>
    implements $FileInfoCopyWith<$Res> {
  factory _$FileInfoCopyWith(_FileInfo value, $Res Function(_FileInfo) _then) =
      __$FileInfoCopyWithImpl;
  @override
  @useResult
  $Res call({BigInt id, String? path, BigInt? length, String? sha1});
}

/// @nodoc
class __$FileInfoCopyWithImpl<$Res> implements _$FileInfoCopyWith<$Res> {
  __$FileInfoCopyWithImpl(this._self, this._then);

  final _FileInfo _self;
  final $Res Function(_FileInfo) _then;

  /// Create a copy of FileInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? path = freezed,
    Object? length = freezed,
    Object? sha1 = freezed,
  }) {
    return _then(_FileInfo(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as BigInt,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      sha1: freezed == sha1
          ? _self.sha1
          : sha1 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TorrentMetadata {
  String? get name;
  BigInt? get length;
  List<FileInfo> get files;

  /// Create a copy of TorrentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TorrentMetadataCopyWith<TorrentMetadata> get copyWith =>
      _$TorrentMetadataCopyWithImpl<TorrentMetadata>(
          this as TorrentMetadata, _$identity);

  /// Serializes this TorrentMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TorrentMetadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other.files, files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, length, const DeepCollectionEquality().hash(files));

  @override
  String toString() {
    return 'TorrentMetadata(name: $name, length: $length, files: $files)';
  }
}

/// @nodoc
abstract mixin class $TorrentMetadataCopyWith<$Res> {
  factory $TorrentMetadataCopyWith(
          TorrentMetadata value, $Res Function(TorrentMetadata) _then) =
      _$TorrentMetadataCopyWithImpl;
  @useResult
  $Res call({String? name, BigInt? length, List<FileInfo> files});
}

/// @nodoc
class _$TorrentMetadataCopyWithImpl<$Res>
    implements $TorrentMetadataCopyWith<$Res> {
  _$TorrentMetadataCopyWithImpl(this._self, this._then);

  final TorrentMetadata _self;
  final $Res Function(TorrentMetadata) _then;

  /// Create a copy of TorrentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? length = freezed,
    Object? files = null,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      files: null == files
          ? _self.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileInfo>,
    ));
  }
}

/// Adds pattern-matching-related methods to [TorrentMetadata].
extension TorrentMetadataPatterns on TorrentMetadata {
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
    TResult Function(_TorrentMetadata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata() when $default != null:
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
    TResult Function(_TorrentMetadata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata():
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
    TResult? Function(_TorrentMetadata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata() when $default != null:
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
    TResult Function(String? name, BigInt? length, List<FileInfo> files)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata() when $default != null:
        return $default(_that.name, _that.length, _that.files);
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
    TResult Function(String? name, BigInt? length, List<FileInfo> files)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata():
        return $default(_that.name, _that.length, _that.files);
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
    TResult? Function(String? name, BigInt? length, List<FileInfo> files)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TorrentMetadata() when $default != null:
        return $default(_that.name, _that.length, _that.files);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _TorrentMetadata implements TorrentMetadata {
  const _TorrentMetadata(
      {this.name, this.length, required final List<FileInfo> files})
      : _files = files;
  factory _TorrentMetadata.fromJson(Map<String, dynamic> json) =>
      _$TorrentMetadataFromJson(json);

  @override
  final String? name;
  @override
  final BigInt? length;
  final List<FileInfo> _files;
  @override
  List<FileInfo> get files {
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  /// Create a copy of TorrentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TorrentMetadataCopyWith<_TorrentMetadata> get copyWith =>
      __$TorrentMetadataCopyWithImpl<_TorrentMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TorrentMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TorrentMetadata &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.length, length) || other.length == length) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, length, const DeepCollectionEquality().hash(_files));

  @override
  String toString() {
    return 'TorrentMetadata(name: $name, length: $length, files: $files)';
  }
}

/// @nodoc
abstract mixin class _$TorrentMetadataCopyWith<$Res>
    implements $TorrentMetadataCopyWith<$Res> {
  factory _$TorrentMetadataCopyWith(
          _TorrentMetadata value, $Res Function(_TorrentMetadata) _then) =
      __$TorrentMetadataCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, BigInt? length, List<FileInfo> files});
}

/// @nodoc
class __$TorrentMetadataCopyWithImpl<$Res>
    implements _$TorrentMetadataCopyWith<$Res> {
  __$TorrentMetadataCopyWithImpl(this._self, this._then);

  final _TorrentMetadata _self;
  final $Res Function(_TorrentMetadata) _then;

  /// Create a copy of TorrentMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? length = freezed,
    Object? files = null,
  }) {
    return _then(_TorrentMetadata(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as BigInt?,
      files: null == files
          ? _self._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<FileInfo>,
    ));
  }
}

// dart format on
