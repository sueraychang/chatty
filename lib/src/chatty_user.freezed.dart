// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatty_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattyUser _$ChattyUserFromJson(Map<String, dynamic> json) {
  return _ChattyUser.fromJson(json);
}

/// @nodoc
mixin _$ChattyUser {
  String get uid => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'signInAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get signInAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'signOutAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get signOutAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattyUserCopyWith<ChattyUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattyUserCopyWith<$Res> {
  factory $ChattyUserCopyWith(
          ChattyUser value, $Res Function(ChattyUser) then) =
      _$ChattyUserCopyWithImpl<$Res, ChattyUser>;
  @useResult
  $Res call(
      {String uid,
      String displayName,
      String photoUrl,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? updatedAt,
      @JsonKey(
          name: 'signInAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? signInAt,
      @JsonKey(
          name: 'signOutAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? signOutAt});
}

/// @nodoc
class _$ChattyUserCopyWithImpl<$Res, $Val extends ChattyUser>
    implements $ChattyUserCopyWith<$Res> {
  _$ChattyUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? photoUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? signInAt = freezed,
    Object? signOutAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      signInAt: freezed == signInAt
          ? _value.signInAt
          : signInAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      signOutAt: freezed == signOutAt
          ? _value.signOutAt
          : signOutAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChattyUserCopyWith<$Res>
    implements $ChattyUserCopyWith<$Res> {
  factory _$$_ChattyUserCopyWith(
          _$_ChattyUser value, $Res Function(_$_ChattyUser) then) =
      __$$_ChattyUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String displayName,
      String photoUrl,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? updatedAt,
      @JsonKey(
          name: 'signInAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? signInAt,
      @JsonKey(
          name: 'signOutAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? signOutAt});
}

/// @nodoc
class __$$_ChattyUserCopyWithImpl<$Res>
    extends _$ChattyUserCopyWithImpl<$Res, _$_ChattyUser>
    implements _$$_ChattyUserCopyWith<$Res> {
  __$$_ChattyUserCopyWithImpl(
      _$_ChattyUser _value, $Res Function(_$_ChattyUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? displayName = null,
    Object? photoUrl = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? signInAt = freezed,
    Object? signOutAt = freezed,
  }) {
    return _then(_$_ChattyUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      signInAt: freezed == signInAt
          ? _value.signInAt
          : signInAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      signOutAt: freezed == signOutAt
          ? _value.signOutAt
          : signOutAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChattyUser implements _ChattyUser {
  const _$_ChattyUser(
      {required this.uid,
      required this.displayName,
      required this.photoUrl,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.updatedAt,
      @JsonKey(
          name: 'signInAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.signInAt,
      @JsonKey(
          name: 'signOutAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.signOutAt});

  factory _$_ChattyUser.fromJson(Map<String, dynamic> json) =>
      _$$_ChattyUserFromJson(json);

  @override
  final String uid;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? createdAt;
  @override
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? updatedAt;
  @override
  @JsonKey(
      name: 'signInAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? signInAt;
  @override
  @JsonKey(
      name: 'signOutAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? signOutAt;

  @override
  String toString() {
    return 'ChattyUser(uid: $uid, displayName: $displayName, photoUrl: $photoUrl, createdAt: $createdAt, updatedAt: $updatedAt, signInAt: $signInAt, signOutAt: $signOutAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattyUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.signInAt, signInAt) ||
                other.signInAt == signInAt) &&
            (identical(other.signOutAt, signOutAt) ||
                other.signOutAt == signOutAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, displayName, photoUrl,
      createdAt, updatedAt, signInAt, signOutAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattyUserCopyWith<_$_ChattyUser> get copyWith =>
      __$$_ChattyUserCopyWithImpl<_$_ChattyUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattyUserToJson(
      this,
    );
  }
}

abstract class _ChattyUser implements ChattyUser {
  const factory _ChattyUser(
      {required final String uid,
      required final String displayName,
      required final String photoUrl,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? updatedAt,
      @JsonKey(
          name: 'signInAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? signInAt,
      @JsonKey(
          name: 'signOutAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? signOutAt}) = _$_ChattyUser;

  factory _ChattyUser.fromJson(Map<String, dynamic> json) =
      _$_ChattyUser.fromJson;

  @override
  String get uid;
  @override
  String get displayName;
  @override
  String get photoUrl;
  @override
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get createdAt;
  @override
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get updatedAt;
  @override
  @JsonKey(
      name: 'signInAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get signInAt;
  @override
  @JsonKey(
      name: 'signOutAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get signOutAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChattyUserCopyWith<_$_ChattyUser> get copyWith =>
      throw _privateConstructorUsedError;
}
