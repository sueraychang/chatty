import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatty/chatty.dart';
import 'package:chattyapp/utils/route_configuration.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChattyUser>>(
      stream: Chatty.instance.users(),
      initialData: const [],
      builder: (context, snapshot) {
        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text('No users'),
          );
        }

        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context, index) {
            final user = snapshot.data![index];

            return InkWell(
              onTap: () async {
                final room = await Chatty.instance.fetchRoom(user);
                if (context.mounted) {
                  Navigator.pushNamed(context, ROUTE_CHAT,
                      arguments: {'room': room});
                }
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: ClipOval(
                    child: CachedNetworkImage(
                      width: 48,
                      height: 48,
                      imageUrl: user.photoUrl,
                    ),
                  ),
                  title: Text(user.displayName),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
