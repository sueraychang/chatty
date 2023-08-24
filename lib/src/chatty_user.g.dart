// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chatty_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChattyUser _$$_ChattyUserFromJson(Map<String, dynamic> json) =>
    _$_ChattyUser(
      uid: json['uid'] as String,
      displayName: json['displayName'] as String,
      photoUrl: json['photoUrl'] as String,
      createdAt: _timestampFromJson(json['createdAt'] as Timestamp?),
      updatedAt: _timestampFromJson(json['updatedAt'] as Timestamp?),
      signInAt: _timestampFromJson(json['signInAt'] as Timestamp?),
      signOutAt: _timestampFromJson(json['signOutAt'] as Timestamp?),
    );

Map<String, dynamic> _$$_ChattyUserToJson(_$_ChattyUser instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'createdAt': _timestampToJson(instance.createdAt),
      'updatedAt': _timestampToJson(instance.updatedAt),
      'signInAt': _timestampToJson(instance.signInAt),
      'signOutAt': _timestampToJson(instance.signOutAt),
    };
