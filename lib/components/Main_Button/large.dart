import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class LargeButton extends StatelessWidget {
  const LargeButton({
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
    Color backgroundColor =
        enabled ? const Color(0xFFF24F13) : const Color(0xFF595959);
    Color textColor = enabled ? Colors.white : Colors.black.withOpacity(0.5);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: 48.0,
          vertical: 24.0,
        ),
        textStyle: TextStyle(
          fontSize: 18,
          color: textColor,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      onPressed: enabled ? onPressed : null,
      child: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: textColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: LargeButton,
)
Widget disabledLarge(BuildContext context) {
  return Center(
    child: LargeButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Large Button Pressed');
      },
      enabled: false,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: LargeButton,
)
Widget enabledLarge(BuildContext context) {
  return Center(
    child: LargeButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Large Button Pressed');
      },
      enabled: true,
    ),
  );
}
