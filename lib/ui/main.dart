
import 'package:core_theming/ui/screens/about/about_ct_screen.dart';
import 'package:core_theming/ui/screens/components/buttons_gallery.dart';
import 'package:core_theming/ui/screens/components/card_gallery.dart';
import 'package:core_theming/ui/screens/components/list_tiles_gallery.dart';
import 'package:core_theming/ui/screens/components/text_gallery.dart';
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:core_theming/ui/designsystem/theme.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';

import 'designsystem/components/tbtn.dart';

void main() {
  runApp(CTTheme(
      child: MaterialApp(
    title: "Core theme Component gallery viewer Application",
    home: GalleryRoot(),
    routes: {
      '/texts': (context) => TextsGallery(),
      '/buttons': (context) => ButtonsGallery(),
      '/listTiles': (context) => ListTilesGallery(),
      '/Cards': (context) => CardGallery(),
      '/about':(context) => AboutCoreTheming(),
    },
  )));
}

class GalleryRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.white,
        appBar: AppBar(
          title: CTAppBarHeader(
            'CT Element Gallery',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: CTThemeColors.deepGray,
          ),
        body: Padding(
          padding: EdgeInsets.all(scale.value(10.0)),
          child: ListView(
            children: <Widget>[
              /// Texts
              ListTile(
                title: CTTitle("Texts"),
                subtitle: CTDescriptionText(
                  "This shows a list of all the text items. in the application.",
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/texts');
                },
              ),
              Divider(),

              /// Buttons
              ListTile(
                title: CTTitle("Buttons"),
                subtitle: CTDescriptionText(
                    "This will show a list of all the button widgets."),
                onTap: () {
                  Navigator.pushNamed(context, "/buttons");
                },
              ),
              Divider(),
              CTButtonDefault(
                label: 'About',
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
              ),
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
