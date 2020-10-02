import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_flutter/screens/wallet/index.dart';
import 'package:ui_flutter/screens/home/index.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Text('UI Flutter Library',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
          ),
          ListTile(
            title: Text('Travelers'),
            trailing: Icon(FontAwesomeIcons.plane),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen()));
            }
          ),
          Divider(),
          ListTile(
            title: Text('Wallet'),
            trailing: Icon(FontAwesomeIcons.wallet),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => WalletScreen()));
            }
          ),
          Divider(),
          ListTile(
            title: Text('Movie'),
            trailing: Icon(Icons.movie),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Food Ordering'),
            trailing: Icon(Icons.fastfood),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            title: Text('Login'),
            trailing: Icon(FontAwesomeIcons.user),
            onTap: () {}
          ),
          Divider(),
          ListTile(
            title: Text('Clock'),
            trailing: Icon(Icons.access_time),
            onTap: () {},
          ),
        ],
      )
    );
  }
}