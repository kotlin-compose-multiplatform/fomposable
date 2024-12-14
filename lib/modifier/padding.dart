import 'package:flutter/widgets.dart';
import 'package:fomposable/core/modifier.dart';

class PaddingModifier extends Modifier {
  final EdgeInsets padding;

  const PaddingModifier(this.padding);

  @override
  Widget apply(Widget widget) {
    return Padding(
      padding: padding,
      child: widget,
    );
  }
}