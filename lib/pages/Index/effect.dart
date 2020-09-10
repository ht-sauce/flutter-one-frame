import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'action.dart';
import 'state.dart';

// Effect<IndexState> buildEffect() {
//   return combineEffects(<Object, Effect<IndexState>>{
//     IndexAction.action: _onAction,
//   });
// }
//
// void _onAction(Action action, Context<IndexState> ctx) {
// }

Effect<IndexState> buildEffect() {
  return combineEffects(<Object, Effect<IndexState>> {
    IndexAction.onOpenGrid: _onOpenGrid,
  });
}
//处理openGrid事件
void _onOpenGrid(Action action, Context<IndexState> ctx) {
  Navigator.of(ctx.context).pushNamed('/grid', arguments: null);    //注意2
}