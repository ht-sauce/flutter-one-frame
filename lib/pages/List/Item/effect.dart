import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';
import 'package:psychotherapy_flutter/store/store.dart';
import 'package:psychotherapy_flutter/store/action.dart';

Effect<ItemState> buildEffect() {
  return combineEffects(<Object, Effect<ItemState>>{
    ItemAction.action: _onAction,
    ItemAction.onThemeChange: _onThemeChange,
  });
}

void _onAction(Action action, Context<ItemState> ctx) {
}

void _onThemeChange(Action action, Context<ItemState> ctx) {
  GlobalStore.store.dispatch(GlobalActionCreator.onchangeThemeColor());
}
