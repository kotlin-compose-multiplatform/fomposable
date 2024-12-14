import 'package:flutter/widgets.dart';

abstract class Modifier {
  const Modifier();

  Widget apply(Widget widget);
}
