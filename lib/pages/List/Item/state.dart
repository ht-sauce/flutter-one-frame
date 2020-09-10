import 'package:fish_redux/fish_redux.dart';

class ItemState implements Cloneable<ItemState> {
  int type;
  String title;
  String content;

  ItemState({this.content, this.type, this.title});

  @override
  ItemState clone() {
    return ItemState()
      ..type = type
      ..title = title
      ..content = content;
  }
}

ItemState initState(Map<String, dynamic> args) {
  return ItemState();
}
