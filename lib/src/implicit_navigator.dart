import 'package:flutter/material.dart';
import 'package:implicit_navigator/src/implicit_route.dart';

class ImplicitNavigator extends StatefulWidget {
  final List<ImplicitRoute> routes;

  const ImplicitNavigator({
    Key key,
    @required this.routes,
  }) : super(key: key);
  @override
  _ImplicitNavigatorState createState() => _ImplicitNavigatorState();
}

class _ImplicitNavigatorState extends State<ImplicitNavigator> {
  final Map<String, dynamic> data = <String, dynamic>{};
  var currentRouteIndex;

  int _findInitialRouteIndex(List<ImplicitRoute> routes) {
    final index = routes.indexWhere((route) => route.initial == true);
    if (index == -1) throw Exception('Default route not set.');
    return index;
  }

  @override
  void initState() {
    currentRouteIndex = _findInitialRouteIndex(widget.routes);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.routes[currentRouteIndex];
  }
}
