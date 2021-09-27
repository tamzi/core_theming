
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;

import 'package:core_theming/ui/designsystem/theme.dart';

import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/components/ct_buttons.dart';
import 'package:core_theming/ui/designsystem/components/ct_flat_buttons.dart';

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
          padding: EdgeInsets.all(10.0),
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
            ],
          ),
        ));
  }
}

/// Start of Gallery element Classes
/// Text Widgets Gallery
class TextsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.lightGray,
        appBar: AppBar(
          title: CTAppBarHeader('Text Items'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
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

//Button Widgets
class ButtonsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: CTAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  child: CTButtonBlack(
                    label: 'Apply Now',
                    onPressed: () {
                      print('You tapped on ButtonBlack with text Apply Now');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonGrey(
                    label: 'Delivered',
                    onPressed: () {
                      print('You tapped on ButtonGrey with text Delivered');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonRed(
                    label: 'Apply for job',
                    onPressed: () {
                      print('You tapped on ButtonRed with text Apply for job');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTPlainFlatButton(
                    label: 'FlatButton',
                    onPressed: () {
                      print('You tapped a FlatButton with text FlatButton');
                    },
                  ),
                ),
                Divider(),
              ]),
            ),
          ),
        ));
  }
}

// List Gallery Widgets
class ListTilesGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: CTAppBarHeader('List Tiles'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}

//List Gallery Widgets
class CardGallery extends StatelessWidget {
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
            padding: EdgeInsets.all(scale.value(20.0)),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[]),
            ),
          ),
        ));
  }
}
