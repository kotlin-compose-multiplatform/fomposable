# fomposable

### Jetpack @Composable for Flutter

```dart
@Fomposable
Widget MyUi() {
  return ComposeButton(
    child: Text("Button with Modifiers"),
    modifier: Modifiers.padding(16.0)
        .background(Colors.red)
        .padding(12.0)
        .background(Colors.green),
    onClick: () => print("Button clicked!"),
  );
}

@Fomposable
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
```
