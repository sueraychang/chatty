import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatty/chatty.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final ChattyRoom room;
  const ChatPage({super.key, required this.room});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: ChatMessagesWidget(room: widget.room),
      bottomNavigationBar: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: BottomAppBar(
          notchMargin: 0,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  final trimmedText = controller.text.trim();
                  if (trimmedText.isNotEmpty) {
                    Chatty.instance.sendMessage(trimmedText, widget.room.uid);
                  }
                },
                icon: const Icon(Icons.send_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChatMessagesWidget extends StatelessWidget {
  final ChattyRoom room;
  const ChatMessagesWidget({super.key, required this.room});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ChattyMessage>>(
      initialData: const [],
      stream: Chatty.instance.messages(room),
      builder: (context, snapshot) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: snapshot.data?.length ?? 0,
          itemBuilder: (context, index) {
            final ChattyMessage message = snapshot.data![index];
            final bool isSender =
                message.authorId == Chatty.instance.currentUser?.uid;
            return Row(
              mainAxisAlignment:
                  isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(message.text),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
        );
      },
    );
  }
}
