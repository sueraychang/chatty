// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatty_user.freezed.dart';
part 'chatty_user.g.dart';

@freezed
class ChattyUser with _$ChattyUser {
  const factory ChattyUser({
    required String uid,
    required String displayName,
    required String photoUrl,
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
    Timestamp? signOutAt,
  }) = _ChattyUser;

  factory ChattyUser.fromJson(Map<String, Object?> json) =>
      _$ChattyUserFromJson(json);
}

Timestamp? _timestampFromJson(Timestamp? timestamp) => timestamp;

Timestamp? _timestampToJson(Timestamp? timestamp) => timestamp;
