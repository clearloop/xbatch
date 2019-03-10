import 'package:flutter/material.dart';

class ColumnList extends StatelessWidget {
  ColumnList({this.listWidget, this.rawList});
  final List<Widget> rawList;
  final Widget listWidget;

  List<Widget> merge() {
    List<Widget> tempList = [];
    if (rawList != null) {
      tempList.addAll(rawList);
    }
    tempList.add(listWidget);

    return tempList;
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: merge()
      ),
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
    );
  }
}
