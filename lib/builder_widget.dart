import 'package:flutter/material.dart';
import 'package:gerencia_de_estado/home_controller.dart';

class BuilderWidget<T> extends StatefulWidget {
  final HomeController controller;
  final Widget Function(BuildContext context, T value) builder;
  const BuilderWidget(
      {Key? key, required this.controller, required this.builder})
      : super(key: key);

  @override
  _BuilderWidgetState<T> createState() => _BuilderWidgetState<T>();
}

class _BuilderWidgetState<T> extends State<BuilderWidget<T>> {
  @override
  void initState() {
    widget.controller.listen((p0) {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.controller.value);
  }
}
