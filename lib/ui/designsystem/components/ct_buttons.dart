
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:core_theming/ui/designsystem/theme.dart';

/// This is a button builder that will be used to build the
/// various properties we need for the buttons that will be created.
/// The
class _NewButtonBuilder {
  final double edgeInset17 = scale.value(17.0);
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
      child: Text(this.label),
      onPressed: this.onPressed == null ? null : this.onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(edgeInset17),
        primary: this.btnPrimaryColor,
        onPrimary: this.btnTextColor,
        elevation: 5,
        shape: this.btnShape,
      ),

    );
  }
}


class CTButtonDefault extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
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
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonRedWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonRedWhite ({
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
      btnPrimaryColor: themeData.reddish,
      btnTextColor: CTTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonRedBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonRedBlack ({
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
      btnPrimaryColor: themeData.reddish,
      btnTextColor: CTTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonWarmRedWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonWarmRedWhite ({
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
      btnPrimaryColor: themeData.warmRed,
      btnTextColor: CTTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonWarmRedBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonWarmRedBlack ({
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
      btnPrimaryColor: themeData.warmRed,
      btnTextColor: CTTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonBlackWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonBlackWhite ({
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
      btnPrimaryColor: themeData.black,
      btnTextColor: CTTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonLimeGreenBlack extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonLimeGreenBlack ({
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
      btnPrimaryColor: themeData.limeGreenish,
      btnTextColor: CTTheme.of(context).black,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
      ),
      onPressed: this.onPressed,
    ).build();
  }
}
class CTButtonLimeGreenWhite extends StatelessWidget {
  final double radiusCircular10 = scale.value(10.0);
  final String label;
  final VoidCallback? onPressed;

  CTButtonLimeGreenWhite ({
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
      btnPrimaryColor: themeData.limeGreenish,
      btnTextColor: CTTheme.of(context).white,
      btnShape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(radiusCircular10),
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
