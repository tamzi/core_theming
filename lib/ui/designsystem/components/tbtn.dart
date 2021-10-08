
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:core_theming/ui/designsystem/theme.dart';

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
/// The
class _NewButtonBuilder {
  final VoidCallback? onPressed;
  final String label;
  final Color? btnPrimaryColor;
  final Color? btnTextColor;
  final OutlinedBorder btnShape;

  /* final Color? color;*/

  _NewButtonBuilder({
    required this.onPressed,
    required this.label,
    required this.btnPrimaryColor,
    required this.btnTextColor,
    required this.btnShape,


  });

  ElevatedButton build(){
    return ElevatedButton(
      child: CTBtnText(this.label),
      onPressed: this.onPressed == null ? null : this.onPressed,
      style: ElevatedButton.styleFrom(
        primary: this.btnPrimaryColor,
        onPrimary: this.btnTextColor,
        elevation: 5,
        shape: this.btnShape,
      ),

    );
  }
}


class CTButtonDefault extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  CTButtonDefault ({
    required this.label,
    this.onPressed,
  });

  /// We build our buttons calling the CTThemeData and the buttonBuilder
  /// class.
  /// This can be repeated for all the buttons we want to build
  @override
  Widget build(BuildContext context) {
    final themeData = CTTheme.of(context);
    return _NewButtonBuilder(
      label: this.label,
      btnPrimaryColor: themeData.deepGray,
      btnTextColor: themeData.black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}









/*
You can also increase size by wrapping the button
with a constrained box like:
child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
            width: 300, height: 200
            ),
            child: ElevatedButton(
              child: Text('300 x 200'), under the buttons place
              onPressed: () {},
            ),
          ),

          see an implementation in the main.dart
*/
