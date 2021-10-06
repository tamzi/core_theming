
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:core_theming/ui/designsystem/theme.dart';





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

