import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//List Gallery Widgets
class CardGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: CTAppBarHeader('info Cards'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}
