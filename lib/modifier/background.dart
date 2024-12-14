import 'package:flutter/widgets.dart';
import 'package:fomposable/core/modifier.dart';

class BackgroundModifier extends Modifier {
  final Color color;

  const BackgroundModifier(this.color);

  @override
  Widget apply(Widget widget) {
    return Container(
      color: color,
      child: widget,
    );
  }
}