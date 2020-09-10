import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action, Page;

import 'package:psychotherapy_flutter/store/state.dart';
import 'package:psychotherapy_flutter/store/store.dart';

import './utils/Rpx.dart'; // 采用小程序rpx单位模式布局页面

import './pages/Index/page.dart'; // 载入首页
import './pages/Grid/page.dart';
import './pages/List/page.dart';

Widget createApp() {
  DhtRpx.initialze(); // rpx单位加载

  final AbstractRoutes routes = PageRoutes(
      pages: <String, Page<Object, dynamic>>{
        '/': IndexPage(),
        '/grid': GridPage(),
        '/list': ListPage(),
      },
      visitor: (String path, Page<Object, dynamic> page) {
        /// 满足条件 Page<T> ，T 是 GlobalBaseState 的子类。
        if (page.isTypeof<GlobalBaseState>()) {
          /// 建立 AppStore 驱动 PageStore 的单向数据连接
          /// 1. 参数1 AppStore
          /// 2. 参数2 当 AppStore.state 变化时, PageStore.state 该如何变化
          page.connectExtraStore<GlobalState>(
              GlobalStore.store, (Object pagestate, GlobalState appState) {
            final GlobalBaseState p = pagestate;
            if (p.themeColor != appState.themeColor) {
              if (pagestate is Cloneable) {
                final Object copy = pagestate.clone();
                final GlobalBaseState newState = copy;
                newState.themeColor = appState.themeColor;
                return newState;
              }
            }
            return pagestate;
          });
        }
      },
  );

  return MaterialApp(
    title: 'dht demo',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: routes.buildPage('/', null), // 作为初始页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext content) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}

void main() => runApp(createApp());
