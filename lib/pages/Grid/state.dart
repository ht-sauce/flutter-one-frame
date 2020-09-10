import 'package:fish_redux/fish_redux.dart';
import 'dart:ui';
import 'package:psychotherapy_flutter/store/state.dart';

import '../../model/model.dart';

class GridState implements Cloneable<GridState>, GlobalBaseState {
  List<GridModel> models; // 存放数据

  @override
  Color themeColor;

  @override
  GridState clone() {
    return GridState()
      ..themeColor = themeColor
      ..models = models;
  }
}

GridState initState(Map<String, dynamic> args) {
  return GridState();
}
