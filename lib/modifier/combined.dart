import 'package:flutter/widgets.dart';
import 'package:fomposable/core/modifier.dart';
import 'package:fomposable/modifier/background.dart';
import 'package:fomposable/modifier/padding.dart';

class CombinedModifier extends Modifier {
  final List<Modifier> modifiers;

  const CombinedModifier(this.modifiers);

  @override
  Widget apply(Widget widget) {
    for (final modifier in modifiers) {
      widget = modifier.apply(widget);
    }
    return widget;
  }
}

class Modifiers {
  static const Modifier empty = _EmptyModifier();

  const Modifiers._();

  static Modifier padding(double value) => PaddingModifier(EdgeInsets.all(value));

  static Modifier background(Color color) => BackgroundModifier(color);
}

class _EmptyModifier extends Modifier {
  const _EmptyModifier();

  @override
  Widget apply(Widget widget) => widget;
}