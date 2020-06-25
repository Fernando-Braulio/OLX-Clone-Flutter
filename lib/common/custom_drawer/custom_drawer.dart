import 'package:flutter/material.dart';
import 'package:xlo/common/custom_drawer/widgets/custom_header.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          CustomHeader()
        ],
      ),
    );
  }
}