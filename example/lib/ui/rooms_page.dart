import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatty/chatty.dart';
import 'package:flutter/material.dart';

class RoomsPage extends StatelessWidget {
  const RoomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChattyRoom>>(
      stream: Chatty.instance.rooms(),
      initialData: const [],
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text('No rooms'),
          );
        }

        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final room = snapshot.data![index];

            return InkWell(
              onTap: () {
                // final room = Chatty.instance.fetchRoom(user);
                // Navigator.pushNamed(context, ROUTE_CHAT,
                //     arguments: {'room': room});
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: ClipOval(
                    child: CachedNetworkImage(
                      width: 48,
                      height: 48,
                      imageUrl: room.photoUrl,
                    ),
                  ),
                  title: Text(room.name),
                  subtitle: Text(room.lastMessage),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
