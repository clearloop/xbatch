import 'package:flutter/material.dart';
import './layout/column_list.dart';

class CustomDrawerView extends StatelessWidget {
  CustomDrawerView({this.drawerTitle, this.drawerList});
  final String drawerTitle;
  final Widget drawerList;

  Widget drawerHeader(context) {
    return Container(
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        child: Text(
          drawerTitle,
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.subhead.fontSize,
            color: Theme.of(context).colorScheme.onPrimary
          )
        ),
      ),
      height: kToolbarHeight + 20.0,
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return ColumnList(
      rawList: <Widget>[drawerHeader(context)],
      listWidget: drawerList,
    );
  }
}
