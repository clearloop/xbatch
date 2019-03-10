import 'package:flutter/material.dart';

class ColumnList extends StatelessWidget {
  ColumnList({this.rawList});
  final List<Widget> rawList;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: rawList
      ),
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
    );
  }
}
