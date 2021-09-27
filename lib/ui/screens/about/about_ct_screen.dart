
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;

import 'package:core_theming/ui/designsystem/theme.dart';

import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/components/ct_buttons.dart';

import 'package:core_theming/ui/main.dart';

void main() {
  runApp(CTTheme(
      child: MaterialApp(
        title: "about Core ThemeComponent gallery viewer Application",
        home: AboutCoreTheming(),
        routes: {
          '/home': (context) => GalleryRoot(),

        },
      )));
}

class AboutCoreTheming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.white,
        appBar: AppBar(
          title: CTAppBarHeader(
            'about core theming',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: CTThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Content Texts
                  CTDescriptionText(
                    "Core theming is a project that kicks starts your design "
                        "layouts in flutter",
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    child: CTButtonGrey(
                      label: 'Delivered',
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
                  ),
                  Divider(),
                  // AppBar Texts
                ],
              ),
            ),
          ),
        ));
  }
}

