import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class MediumButton extends StatelessWidget {
  const MediumButton({
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
    Color? borderColor = enabled ? const Color(0xFFF26513) : Colors.grey[500];
    Color textColor = enabled
        ? const Color(0xFFF24F13)
        : const Color(0xFF000000); // Text color

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          color: borderColor!,
          width: 1,
        ),
        textStyle: TextStyle(
          fontSize: 10,
          color: textColor,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 32.0,
          vertical: 16.0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      onPressed: enabled ? onPressed : null,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          color: textColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: MediumButton,
)
Widget disabledOutline(BuildContext context) {
  return Center(
    child: Opacity(
      opacity: 0.5, // 50% de opacidad
      child: MediumButton(
        label: 'PRIMARY',
        onPressed: () {
          print('Medium Button Pressed');
        },
        enabled: false,
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: MediumButton,
)
Widget enabledOutline(BuildContext context) {
  return Center(
    child: MediumButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Medium Button Pressed');
      },
      enabled: true,
    ),
  );
}