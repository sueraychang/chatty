// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatty_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattyRoom _$$_ChattyRoomFromJson(Map<String, dynamic> json) =>
    _$_ChattyRoom(
      uid: json['uid'] as String,
      name: json['name'] as String,
      photoUrl: json['photoUrl'] as String,
      lastMessage: json['lastMessage'] as String? ?? '',
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: _timestampFromJson(json['createdAt'] as Timestamp?),
      updatedAt: _timestampFromJson(json['updatedAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChattyRoomToJson(_$_ChattyRoom instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'name': instance.name,
      'photoUrl': instance.photoUrl,
      'lastMessage': instance.lastMessage,
      'userIds': instance.userIds,
      'createdAt': _timestampToJson(instance.createdAt),
      'updatedAt': _timestampToJson(instance.updatedAt),
    };
