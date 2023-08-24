// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatty_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattyMessage _$$_ChattyMessageFromJson(Map<String, dynamic> json) =>
    _$_ChattyMessage(
      authorId: json['authorId'] as String,
      text: json['text'] as String,
      createdAt: _timestampFromJson(json['createdAt'] as Timestamp?),
      updatedAt: _timestampFromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChattyMessageToJson(_$_ChattyMessage instance) =>
    <String, dynamic>{
      'authorId': instance.authorId,
      'text': instance.text,
      'createdAt': _timestampToJson(instance.createdAt),
      'updatedAt': _timestampToJson(instance.updatedAt),
    };
