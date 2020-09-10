import 'package:fish_redux/fish_redux.dart';

enum IndexAction {
  // action,
  onOpenGrid
}

class IndexActionCreator {
  // static Action onAction() {
  //   return const Action(IndexAction.action);
  // }
  // 自己定义的
  static Action onOpenGrid() {
    return const Action(IndexAction.onOpenGrid);
  }
}
