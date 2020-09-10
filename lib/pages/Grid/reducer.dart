import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

import '../../model/api.dart';

Reducer<GridState> buildReducer() {
  return asReducer(
    <Object, Reducer<GridState>>{
      GridAction.action: _onAction,
      GridAction.loadData: _onLoadData,
    },
  );
}

GridState _onAction(GridState state, Action action) {
  final GridState newState = state.clone();
  return newState;
}
GridState _onLoadData(GridState state, Action action) {
  final GridState newState = state.clone()..models = Api().getGridData(); // 从api请求数据
  return newState;
}