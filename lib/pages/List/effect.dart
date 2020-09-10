import 'package:fish_redux/fish_redux.dart';
import 'package:psychotherapy_flutter/pages/List/Item/state.dart';
import 'action.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    Lifecycle.initState: _onInit,
  });
}

void _onAction(Action action, Context<ListState> ctx) {}

void _onInit(Action action, Context<ListState> ctx) {
  List<ItemState> mockData = [
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
    ItemState(
      type: 0,
      title: 'fdsafsa',
      content: 'fdsafhsdakfjsdak',
    ),
  ];
  ctx.dispatch(ListActionCreator.initList(mockData));
}
