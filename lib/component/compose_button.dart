import 'package:flutter/widgets.dart';
import 'package:fomposable/core/extension.dart';
import 'package:fomposable/core/modifier.dart';

@Fomposable()
Widget ComposeButton({
  required Widget child,
  required Modifier modifier,
  required VoidCallback onClick,
}) {
  return GestureDetector(
    onTap: onClick,
    child: modifier.apply(child),
  );
}