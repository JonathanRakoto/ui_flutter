import 'package:flutter/material.dart';

class ButtonWallet extends StatelessWidget {
  const ButtonWallet({
    Key key,
    this.title,
    this.icon
  }) : super(key: key);

  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton.icon(
        icon: icon,
        label: Text(title),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        onPressed: () {},
      ),
    );
  }
}