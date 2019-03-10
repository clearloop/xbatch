import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  CustomListView({this.list});
  final List<Widget> list;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        itemExtent: 68.0,
        children: list,
        padding: EdgeInsets.zero,
      )
    );
  }
}
