import 'package:flutter/material.dart';
import 'package:ui_flutter/screens/travelers/home/header.dart';
import 'package:ui_flutter/components/list/travelers/index.dart';
import 'package:ui_flutter/components/list/travelers/top_users.dart';
import 'package:ui_flutter/constants/size.dart';

class BodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          TravelerHeader(),
          VerticalSpacing(),
          ListCards(),
          VerticalSpacing(of: 10),
          VerticalSpacing(of: 20),
          TopUsers(),
          VerticalSpacing()
        ],
      ),
    );
  }
}
