import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter adapter = viewService.buildAdapter(); //创建adapter

  return Scaffold(
    appBar: AppBar(
      title: Text('列表页面'),
      backgroundColor: state.themeColor,
    ),
    body: Container(
      child: ListView.builder(
        itemBuilder: adapter.itemBuilder,
        itemCount: adapter.itemCount,
      ),
    ),
  );
}
