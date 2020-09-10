import 'dart:ui';
import 'package:fish_redux/fish_redux.dart';
import './Item/state.dart';

import 'package:psychotherapy_flutter/store/state.dart';

class ListState implements Cloneable<ListState>, GlobalBaseState {
  List<ItemState> items; //保存item的state

  @override
  Color themeColor;

  @override
  ListState clone() {
    return ListState()
      ..items = items
      ..themeColor = themeColor;
  }
}

ListState initState(Map<String, dynamic> args) {
  return ListState();
}
