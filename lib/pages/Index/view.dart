import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(IndexState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: state.themeColor,
      title: Text('首页'),
    ),
    body: Container(
      child: Center(
        child: RaisedButton(
          padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
          color: Colors.red,
          child: Text(
            '进入',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            dispatch(IndexActionCreator.onOpenGrid());
          },
        ),
      ),
    ),
  );
}
