
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:core_theming/ui/designsystem/theme.dart';


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
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20.0),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}










class _NewButtonBuilder {
  final VoidCallback? onPressed;
  final String label;
  final Color? btnPrimaryColor;
  final OutlinedBorder btnShape;

 /* final Color? color;*/

  _NewButtonBuilder({
    required this.onPressed,
    required this.label,
    required this.btnPrimaryColor,
    required this.btnShape,


});

ElevatedButton build(){
    return ElevatedButton(
      child: CTBtnTextWhite(this.label),
      onPressed: this.onPressed == null ? null : this.onPressed,
      style: ElevatedButton.styleFrom(
            primary: this.btnPrimaryColor,
            onPrimary: Colors.white,
            elevation: 10,
        shape: this.btnShape,
        ),

    );
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
