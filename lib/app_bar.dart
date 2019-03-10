import 'package:flutter/material.dart';

class EndsAppBar extends StatefulWidget implements PreferredSizeWidget {
  EndsAppBar({Key key, this.bottom, this.title}) :
  preferredSize = Size.fromHeight(kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
  super(key: key);

  final Size preferredSize;
  final PreferredSizeWidget bottom;
  final String title;
  
  @override
  _EndsAppBarState createState() => _EndsAppBarState();
}

class _EndsAppBarState extends State<EndsAppBar>{
  void _onPressed() {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: _onPressed,
      ),
      title: Text(widget.title)
    );
  }
}
