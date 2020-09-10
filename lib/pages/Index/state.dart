import 'package:fish_redux/fish_redux.dart';
import 'package:psychotherapy_flutter/store/state.dart';
import 'dart:ui';

class IndexState implements Cloneable<IndexState>, GlobalBaseState {

  @override
  Color themeColor;

  @override
  IndexState clone() {
    return IndexState()..themeColor = themeColor; // 克隆规则
  }
}

IndexState initState(Map<String, dynamic> args) {
  return IndexState();
}
