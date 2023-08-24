// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatty_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattyRoom _$ChattyRoomFromJson(Map<String, dynamic> json) {
  return _ChattyRoom.fromJson(json);
}

/// @nodoc
mixin _$ChattyRoom {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattyRoomCopyWith<ChattyRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattyRoomCopyWith<$Res> {
  factory $ChattyRoomCopyWith(
          ChattyRoom value, $Res Function(ChattyRoom) then) =
      _$ChattyRoomCopyWithImpl<$Res, ChattyRoom>;
  @useResult
  $Res call(
      {String uid,
      String name,
      String photoUrl,
      String lastMessage,
      List<String> userIds,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? updatedAt});
}

/// @nodoc
class _$ChattyRoomCopyWithImpl<$Res, $Val extends ChattyRoom>
    implements $ChattyRoomCopyWith<$Res> {
  _$ChattyRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? lastMessage = null,
    Object? userIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChattyRoomCopyWith<$Res>
    implements $ChattyRoomCopyWith<$Res> {
  factory _$$_ChattyRoomCopyWith(
          _$_ChattyRoom value, $Res Function(_$_ChattyRoom) then) =
      __$$_ChattyRoomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String name,
      String photoUrl,
      String lastMessage,
      List<String> userIds,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      Timestamp? updatedAt});
}

/// @nodoc
class __$$_ChattyRoomCopyWithImpl<$Res>
    extends _$ChattyRoomCopyWithImpl<$Res, _$_ChattyRoom>
    implements _$$_ChattyRoomCopyWith<$Res> {
  __$$_ChattyRoomCopyWithImpl(
      _$_ChattyRoom _value, $Res Function(_$_ChattyRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? photoUrl = null,
    Object? lastMessage = null,
    Object? userIds = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ChattyRoom(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: null == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChattyRoom implements _ChattyRoom {
  const _$_ChattyRoom(
      {required this.uid,
      required this.name,
      required this.photoUrl,
      this.lastMessage = '',
      required final List<String> userIds,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.updatedAt})
      : _userIds = userIds;

  factory _$_ChattyRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ChattyRoomFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String photoUrl;
  @override
  @JsonKey()
  final String lastMessage;
  final List<String> _userIds;
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? createdAt;
  @override
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  final Timestamp? updatedAt;

  @override
  String toString() {
    return 'ChattyRoom(uid: $uid, name: $name, photoUrl: $photoUrl, lastMessage: $lastMessage, userIds: $userIds, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattyRoom &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, photoUrl, lastMessage,
      const DeepCollectionEquality().hash(_userIds), createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattyRoomCopyWith<_$_ChattyRoom> get copyWith =>
      __$$_ChattyRoomCopyWithImpl<_$_ChattyRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattyRoomToJson(
      this,
    );
  }
}

abstract class _ChattyRoom implements ChattyRoom {
  const factory _ChattyRoom(
      {required final String uid,
      required final String name,
      required final String photoUrl,
      final String lastMessage,
      required final List<String> userIds,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? updatedAt}) = _$_ChattyRoom;

  factory _ChattyRoom.fromJson(Map<String, dynamic> json) =
      _$_ChattyRoom.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get photoUrl;
  @override
  String get lastMessage;
  @override
  List<String> get userIds;
  @override
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get createdAt;
  @override
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChattyRoomCopyWith<_$_ChattyRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
