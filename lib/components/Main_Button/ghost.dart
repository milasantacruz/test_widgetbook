import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class GhostButton extends StatelessWidget {
  const GhostButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.enabled = true,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    Color textColor = enabled ? const Color(0xFFF24F13) : Colors.grey;
    return InkWell(
      onTap: enabled ? onPressed : null,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Ghost Button',
  type: GhostButton,
)
Widget ghostButton(BuildContext context) {
  return Center(
    child: GhostButton(
      label: 'Ghost Button',
      onPressed: () {
        print('Ghost Button Pressed');
      },
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled Ghost Button',
  type: GhostButton,
)
Widget enabledGhost(BuildContext context) {
  return Center(
    child: GhostButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Enabled Ghost Button Pressed');
      },
      enabled: true,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Disabled Ghost Button',
  type: GhostButton,
)
Widget disabledGhost(BuildContext context) {
  return Center(
    child: GhostButton(
      label: 'PRIMARY',
      onPressed: () {},
      enabled: false,
    ),
  );
}
