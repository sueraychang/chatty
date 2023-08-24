// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatty_message.freezed.dart';
part 'chatty_message.g.dart';

@freezed
class ChattyMessage with _$ChattyMessage {
  const factory ChattyMessage({
    required String authorId,
    required String text,
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
  }) = _ChattyMessage;

  factory ChattyMessage.fromJson(Map<String, Object?> json) =>
      _$ChattyMessageFromJson(json);
}

Timestamp? _timestampFromJson(Timestamp? timestamp) => timestamp;

Timestamp? _timestampToJson(Timestamp? timestamp) => timestamp;