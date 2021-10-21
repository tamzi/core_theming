import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/components/ct_buttons.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsGallery extends StatelessWidget {
  final double edgeInsets20 = scale.value(20.0);
  final double measured300 = scale.value(300.0);
  final double measured200 = scale.value(200.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.white,
        appBar: AppBar(
          title: CTAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGrey,
          iconTheme: IconThemeData(color:CTThemeColors.black),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                CTButtonDefault(
                  label: 'Default Button',
                  onPressed: () {
                    print('You tapped on Default Button');
                  },
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonBlackWhite(
                    label: 'Button BlackWhite',
                    onPressed: () {
                      print('You tapped on Button BlackWhite');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonDefault(
                    label: 'DefaultButton in container',
                    onPressed: () {
                      print('You tapped on DefaultButton in container');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonWarmRedWhite(
                    label: 'Button WarmRedWhite',
                    onPressed: () {
                      print('You tapped on a WarmRedWhite Button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonWarmRedBlack(
                    label: 'Button WarmRedBlack',
                    onPressed: () {
                      print('You tapped on WarmRedBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonRedWhite(
                    label: 'Button RedWhite',
                    onPressed: () {
                      print('You tapped a RedWhite');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonRedBlack (
                    label: 'Button RedBlack',
                    onPressed: () {
                      print('You tapped a RedBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonLimeGreenBlack (
                    label: 'Button LimeGreenBlack',
                    onPressed: () {
                      print('You tapped a LimeGreenBlack button');
                    },
                  ),
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTButtonLimeGreenWhite (
                    label: 'Button LimeGreenWhite',
                    onPressed: () {
                      print('You tapped a Button LimeGreenWhite button');
                    },
                  ),
                ),
                Divider(),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                    width: measured300, height: measured200
                ),
                child: CTButtonDefault(
                  label: 'default button stretched to 300 x 200',
                  onPressed: () {
                    print('You tapped on default button stretched to 300 x 200');
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
