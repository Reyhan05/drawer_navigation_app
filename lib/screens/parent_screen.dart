import 'package:drawer_navigation_app/screens/menus/archive_screen.dart';
import 'package:drawer_navigation_app/screens/menus/favorite_screen.dart';
import 'package:drawer_navigation_app/screens/menus/inbox_screen.dart';
import 'package:drawer_navigation_app/screens/menus/outbox_screen.dart';
import 'package:drawer_navigation_app/screens/menus/spam_screen.dart';
import 'package:drawer_navigation_app/screens/menus/trash_screen.dart';
import 'package:flutter/material.dart';

class DrawerItem {
  final String title;
  final IconData iconData;

  DrawerItem({this.title, this.iconData});
}

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _selectedDrawerIndex = 0;

  final drawerItem = [
    DrawerItem(title: "Inbox", iconData: Icons.inbox),
    DrawerItem(title: "Outbox", iconData: Icons.send),
    DrawerItem(title: "Favorite", iconData: Icons.favorite),
    DrawerItem(title: "Archive", iconData: Icons.archive),
    DrawerItem(title: "Trash", iconData: Icons.restore_from_trash),
    DrawerItem(title: "Spam", iconData: Icons.info),
  ];

  final List<Widget> menu = <Widget>[
    InboxScreen(),
    OutboxScreen(),
    FavoriteScreen(),
    ArchiveScreen(),
    TrashScreen(),
    SpamScreen()
  ];

  _onSelectItem(int index) {
    setState(() {
      _selectedDrawerIndex = index;
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(drawerItem[_selectedDrawerIndex].title)),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Reyhan M akbar"),
              accountEmail: Text("reyhandeveloper7b@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text("R", style: TextStyle(fontSize: 40.0)),
              ),
            ),
            ListTile(
              title: Text(drawerItem[0].title),
              leading: Icon(drawerItem[0].iconData),
              onTap: () {
                _onSelectItem(0);
              },
              selected: 0 == _selectedDrawerIndex,
            ),
            ListTile(
              title: Text(drawerItem[1].title),
              leading: Icon(drawerItem[1].iconData),
              onTap: () {
                _onSelectItem(1);
              },
              selected: 1 == _selectedDrawerIndex,
            ),
            ListTile(
              title: Text(drawerItem[2].title),
              leading: Icon(drawerItem[2].iconData),
              onTap: () {
                _onSelectItem(2);
              },
              selected: 2 == _selectedDrawerIndex,
            ),
            ListTile(
              title: Text(drawerItem[3].title),
              leading: Icon(drawerItem[3].iconData),
              onTap: () {
                _onSelectItem(3);
              },
              selected: 3 == _selectedDrawerIndex,
            ),
            ListTile(
              title: Text(drawerItem[4].title),
              leading: Icon(drawerItem[4].iconData),
              onTap: () {
                _onSelectItem(4);
              },
              selected: 4 == _selectedDrawerIndex,
            ),
            ListTile(
              title: Text(drawerItem[5].title),
              leading: Icon(drawerItem[5].iconData),
              onTap: () {
                _onSelectItem(5);
              },
              selected: 5 == _selectedDrawerIndex,
            ),
          ],
        ),
      ),
      body: menu.elementAt(_selectedDrawerIndex),
    );
  }
}
