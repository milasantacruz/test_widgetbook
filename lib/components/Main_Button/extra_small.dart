import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class ExtraSmallButton extends StatelessWidget {
  const ExtraSmallButton({
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
          horizontal: 16,
          vertical: 8,
        ),
        textStyle: TextStyle(
          fontSize: 12,
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
          fontSize: 12,
          color: textColor,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: ExtraSmallButton,
)
Widget disabledExtraSmall(BuildContext context) {
  return Center(
    child: ExtraSmallButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Extra Small Button Pressed');
      },
      enabled: false,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Enabled',
  type: ExtraSmallButton,
)
Widget enabledExtraSmall(BuildContext context) {
  return Center(
    child: ExtraSmallButton(
      label: 'PRIMARY',
      onPressed: () {
        print('Extra Small Button Pressed');
      },
      enabled: true,
    ),
  );
}
