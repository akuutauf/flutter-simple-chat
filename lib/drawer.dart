import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(right: 3),
        children: [
          _drawerHeader(),
          _drawerItem(
            icon: Icons.move_to_inbox_rounded,
            text: "Inbox",
            onTap: () {
              // Navigator.pushNamed(context, '/');
            },
          ),
          _drawerItem(
            icon: Icons.send,
            text: "Outbox",
            onTap: () {},
          ),
          _drawerItem(
              icon: Icons.new_releases_rounded, text: "Spam", onTap: () {}),
          _drawerItem(icon: Icons.forum_rounded, text: "Forums", onTap: () {}),
          _drawerItem(
              icon: Icons.announcement_rounded, text: "Promos", onTap: () {}),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(
          image: AssetImage('assets/images/akebi_1.jpg'), fit: BoxFit.cover),
    ),
    decoration: BoxDecoration(color: Color.fromARGB(255, 124, 153, 172)),
    accountName: Text('Taufik Hidayat'),
    accountEmail: Text('taufikhidayat09121@gmail.com'),
  );
}

Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    // hoverColor: Colors.grey,
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color.fromARGB(255, 124, 153, 172),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(255, 124, 153, 172),
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
