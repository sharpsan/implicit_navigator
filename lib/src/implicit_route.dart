import 'package:flutter/material.dart';

class ImplicitRoute extends StatelessWidget {
  final String name;
  final Function create;
  final dynamic Function(BuildContext context) builder;
  final bool initial;

  const ImplicitRoute({
    Key key,
    this.name,
    this.create,
    @required this.builder,
    this.initial = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (create != null) create();
    return builder(context);
  }
}
