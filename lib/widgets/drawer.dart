import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  final imageUrl =
      'https://techcommunity.microsoft.com/t5/image/serverpage/image-id/217078i525F6A9EF292601F/image-size/large?v=v2&px=999';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text('criminal'),
                accountEmail: const Text('criminal@g.com'),
                // currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home, color: Colors.white),
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              onTap: () {/* react to the tile being tapped */},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.profile_circled,
                  color: Colors.white),
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              onTap: () {/* react to the tile being tapped */},
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.mail, color: Colors.white),
              title: const Text(
                'Email me',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
              onTap: () {/* react to the tile being tapped */},
            ),
          ],
        ),
      ),
    );
  }
}
