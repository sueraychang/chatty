// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatty_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChattyMessage _$ChattyMessageFromJson(Map<String, dynamic> json) {
  return _ChattyMessage.fromJson(json);
}

/// @nodoc
mixin _$ChattyMessage {
  String get authorId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'createdAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'updatedAt', fromJson: _timestampFromJson, toJson: _timestampToJson)
  Timestamp? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChattyMessageCopyWith<ChattyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChattyMessageCopyWith<$Res> {
  factory $ChattyMessageCopyWith(
          ChattyMessage value, $Res Function(ChattyMessage) then) =
      _$ChattyMessageCopyWithImpl<$Res, ChattyMessage>;
  @useResult
  $Res call(
      {String authorId,
      String text,
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
class _$ChattyMessageCopyWithImpl<$Res, $Val extends ChattyMessage>
    implements $ChattyMessageCopyWith<$Res> {
  _$ChattyMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? text = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ChattyMessageCopyWith<$Res>
    implements $ChattyMessageCopyWith<$Res> {
  factory _$$_ChattyMessageCopyWith(
          _$_ChattyMessage value, $Res Function(_$_ChattyMessage) then) =
      __$$_ChattyMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String authorId,
      String text,
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
class __$$_ChattyMessageCopyWithImpl<$Res>
    extends _$ChattyMessageCopyWithImpl<$Res, _$_ChattyMessage>
    implements _$$_ChattyMessageCopyWith<$Res> {
  __$$_ChattyMessageCopyWithImpl(
      _$_ChattyMessage _value, $Res Function(_$_ChattyMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? text = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_ChattyMessage(
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ChattyMessage implements _ChattyMessage {
  const _$_ChattyMessage(
      {required this.authorId,
      required this.text,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      this.updatedAt});

  factory _$_ChattyMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChattyMessageFromJson(json);

  @override
  final String authorId;
  @override
  final String text;
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
    return 'ChattyMessage(authorId: $authorId, text: $text, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChattyMessage &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authorId, text, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChattyMessageCopyWith<_$_ChattyMessage> get copyWith =>
      __$$_ChattyMessageCopyWithImpl<_$_ChattyMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChattyMessageToJson(
      this,
    );
  }
}

abstract class _ChattyMessage implements ChattyMessage {
  const factory _ChattyMessage(
      {required final String authorId,
      required final String text,
      @JsonKey(
          name: 'createdAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? createdAt,
      @JsonKey(
          name: 'updatedAt',
          fromJson: _timestampFromJson,
          toJson: _timestampToJson)
      final Timestamp? updatedAt}) = _$_ChattyMessage;

  factory _ChattyMessage.fromJson(Map<String, dynamic> json) =
      _$_ChattyMessage.fromJson;

  @override
  String get authorId;
  @override
  String get text;
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
  _$$_ChattyMessageCopyWith<_$_ChattyMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
