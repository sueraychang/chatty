import 'package:chatty/chatty.dart';
import 'package:chatty/src/chatty_message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Chatty {
  static const String usersCollectionName = 'users';
  static const String roomsCollectionName = 'rooms';

  ChattyUser? _currentUser;
  ChattyUser? get currentUser => _currentUser;

  late final FirebaseFirestore db;
  Chatty._privateConstructor() {
    db = FirebaseFirestore.instance;
  }

  /// Singleton instance.
  static final Chatty instance = Chatty._privateConstructor();

  Future<ChattyUser?> fetchUser() async {
    if (FirebaseAuth.instance.currentUser != null) {
      await db
          .collection(usersCollectionName)
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get()
          .then((value) {
        _currentUser =
            ChattyUser.fromJson(value.data() as Map<String, dynamic>);
      });
    } else {
      _currentUser = null;
    }
    return _currentUser;
  }

  Future<void> signIn(ChattyUser user) async {
    print('signIn');
    await db.collection(usersCollectionName).doc(user.uid).get().then(
      (value) async {
        if (value.data() != null) {
          print('update user ${user.uid}');
          final oldUser =
              ChattyUser.fromJson(value.data() as Map<String, dynamic>);
          print('oldUser: ${oldUser.toJson()}');

          final updatedUser = oldUser
              .copyWith(
                displayName: user.displayName,
                photoUrl: user.photoUrl,
              )
              .toJson();
          updatedUser['updatedAt'] = FieldValue.serverTimestamp();
          updatedUser['signInAt'] = FieldValue.serverTimestamp();

          await db
              .collection(usersCollectionName)
              .doc(user.uid)
              .update(updatedUser);
        } else {
          print('create user ${user.uid}');
          final newUser = ChattyUser(
            uid: user.uid,
            displayName: user.displayName,
            photoUrl: user.photoUrl,
          ).toJson();

          newUser['createdAt'] = FieldValue.serverTimestamp();
          newUser['updatedAt'] = FieldValue.serverTimestamp();
          newUser['signInAt'] = FieldValue.serverTimestamp();

          await db.collection(usersCollectionName).doc(user.uid).set(newUser);
        }
      },
      onError: (e) {
        print('signIn error $e');
      },
    );

    _currentUser = user;
  }

  Future<void> signOut() async {
    await db.collection(usersCollectionName).doc(_currentUser!.uid).get().then(
      (value) async {
        if (value.data() != null) {
          final user =
              ChattyUser.fromJson(value.data() as Map<String, dynamic>);
          print('signOut user ${user.uid}');

          await db
              .collection(usersCollectionName)
              .doc(user.uid)
              .update({'signOutAt': FieldValue.serverTimestamp()});
        }
      },
      onError: (e) {
        print('signOut error $e');
      },
    );

    _currentUser = null;
  }

  /// Returns a stream of all users.
  Stream<List<ChattyUser>> users() {
    if (_currentUser == null) {
      return const Stream.empty();
    }

    return db
        .collection(usersCollectionName)
        .where(FieldPath.documentId, isNotEqualTo: _currentUser!.uid)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ChattyUser.fromJson(doc.data()))
            .toList());
  }

  Future<ChattyRoom> fetchRoom(ChattyUser otherUser) async {
    if (_currentUser == null) {
      return Future.error('Please sign in.');
    }

    final userIds = [_currentUser!.uid, otherUser.uid]..sort();

    final roomQuery = await db
        .collection(roomsCollectionName)
        .where('userIds', isEqualTo: userIds)
        .limit(1)
        .get();

    if (roomQuery.docs.isNotEmpty) {
      return ChattyRoom.fromJson(roomQuery.docs[0].data());
    } else {
      final uid = db.collection(roomsCollectionName).doc().id;
      final room = ChattyRoom(
        uid: uid,
        name: otherUser.displayName,
        photoUrl: otherUser.photoUrl,
        userIds: userIds,
      ).toJson();

      room['createdAt'] = FieldValue.serverTimestamp();
      room['updatedAt'] = FieldValue.serverTimestamp();
      await db.collection(roomsCollectionName).doc(uid).set(room);
      final roomQuery = await db
          .collection(roomsCollectionName)
          .where('userIds', isEqualTo: userIds)
          .limit(1)
          .get();
      return ChattyRoom.fromJson(roomQuery.docs[0].data());
    }
  }

  /// Returns a stream of all users.
  Stream<List<ChattyRoom>> rooms() {
    if (_currentUser == null) {
      return const Stream.empty();
    }

    return db
        .collection(roomsCollectionName)
        .where('userIds', arrayContains: _currentUser!.uid)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => ChattyRoom.fromJson(doc.data()))
            .toList());
  }

  /// Sends a text message to the Firestore.
  Future sendMessage(String text, String roomId) async {
    if (_currentUser == null) return;

    final message =
        ChattyMessage(authorId: _currentUser!.uid, text: text).toJson();
    message['createdAt'] = FieldValue.serverTimestamp();
    message['updatedAt'] = FieldValue.serverTimestamp();

    await db.collection('$roomsCollectionName/$roomId/messages').add(message);

    await db
        .collection(roomsCollectionName)
        .doc(roomId)
        .update({'updatedAt': FieldValue.serverTimestamp()});
  }

  /// Returns a stream of messages from Firebase for a given room.
  Stream<List<ChattyMessage>> messages(
    ChattyRoom room, {
    List<Object?>? endAt,
    List<Object?>? endBefore,
    int? limit,
    List<Object?>? startAfter,
    List<Object?>? startAt,
  }) {
    var query = db
        .collection('$roomsCollectionName/${room.uid}/messages')
        .orderBy('createdAt', descending: true);

    if (endAt != null) {
      query = query.endAt(endAt);
    }

    if (endBefore != null) {
      query = query.endBefore(endBefore);
    }

    if (limit != null) {
      query = query.limit(limit);
    }

    if (startAfter != null) {
      query = query.startAfter(startAfter);
    }

    if (startAt != null) {
      query = query.startAt(startAt);
    }

    return query.snapshots().map((snapshot) => snapshot.docs
        .map((doc) => ChattyMessage.fromJson(doc.data()))
        .toList());
  }
}
