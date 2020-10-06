import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ui_flutter/models/theme.dart';
import 'package:ui_flutter/screens/clock/index.dart';
import 'package:ui_flutter/screens/wallet/index.dart';
import 'package:ui_flutter/screens/movie/home/index.dart';
import 'package:ui_flutter/screens/travelers/home/index.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('UI Flutter Library',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Consumer<ThemeModel>(
                    builder: (context, theme, child) => GestureDetector(
                    onTap: () => theme.changeTheme(),
                    child: SvgPicture.asset(
                      theme.isLightTheme
                      ? 'assets/icons/Sun.svg'
                      : 'assets/icons/Moon.svg',
                    height: 24,
                    width: 24,
                    color: Theme.of(context).primaryColor),
                  )
              )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text('Travelers'),
            trailing: Icon(FontAwesomeIcons.plane),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TravelersScreen()));
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
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => MovieScreen()));
            },
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
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ClockScreen()));
            },
          ),
        ],
      )
    );
  }
}
