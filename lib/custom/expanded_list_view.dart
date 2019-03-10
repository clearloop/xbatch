import 'package:flutter/material.dart';

class ExpandedListView extends StatelessWidget {
  ExpandedListView({this.list});
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
