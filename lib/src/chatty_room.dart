// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatty_room.freezed.dart';
part 'chatty_room.g.dart';

@freezed
class ChattyRoom with _$ChattyRoom {
  const factory ChattyRoom({
    required String uid,
    required String name,
    required String photoUrl,
    @Default('') String lastMessage, 
    required List<String> userIds,
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
  }) = _ChattyRoom;

  factory ChattyRoom.fromJson(Map<String, Object?> json) =>
      _$ChattyRoomFromJson(json);
}

Timestamp? _timestampFromJson(Timestamp? timestamp) => timestamp;

Timestamp? _timestampToJson(Timestamp? timestamp) => timestamp;