import 'package:cached_network_image/cached_network_image.dart';
import 'package:chatty/chatty.dart';
import 'package:chattyapp/ui/rooms_page.dart';
import 'package:chattyapp/ui/users_page.dart';
import 'package:chattyapp/utils/route_configuration.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final pages = [const UsersPage(), const RoomsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chatty'),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn().signOut();
              await Chatty.instance.signOut();
              if (context.mounted) {
                Navigator.pushNamedAndRemoveUntil(
                    context, ROUTE_LOGIN, (route) => false);
              }
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            label: const Text(
              'SignOut',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: Chatty.instance.fetchUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return pages[_currentIndex];
            } else {
              Navigator.pushNamedAndRemoveUntil(
                  context, ROUTE_SPLASH, (route) => false);
            }
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Users'),
          BottomNavigationBarItem(icon: Icon(Icons.forum), label: 'Rooms'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  ClipOval(
                    child: CachedNetworkImage(
                      imageUrl: Chatty.instance.currentUser!.photoUrl,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(Chatty.instance.currentUser!.displayName),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
