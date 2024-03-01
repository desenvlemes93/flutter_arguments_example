
import 'package:flutter/material.dart';

class NavigatorObserverCustom extends NavigatorObserver {

  @override
  void didPush(Route route, Route? previousRoute) {
    // TODO: implement didPush

    print('Passou aqui ${route}');
    super.didPush(route, previousRoute);
  }
  
  @override
  void didPop(Route route, Route? previousRoute) {
    // TODO: implement didPop
    super.didPop(route, previousRoute);
  }
}