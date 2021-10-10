import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TextsGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.lightGray,
        appBar: AppBar(
          title: CTAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
          iconTheme: IconThemeData(color:CTThemeColors.black),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Content Texts
                  CTHeader('This is a Header'),
                  Divider(),
                  CTTitle('This is a Title'),
                  Divider(),
                  CTDescriptionText(
                    "This is a description.",
                  ),
                  Divider(),
                  CTBodyText('This is a body Text'),
                  Divider(),
                  // AppBar Texts
                  CTAppBarHeader('This is an AppBar Header'),
                  Divider(),
                  CTAppBarDescription('This is an AppBar Description'),
                  Divider(),
                ],
              ),
            ),
          ),
        ));
  }
}
