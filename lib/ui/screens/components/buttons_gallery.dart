import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/components/ct_buttons.dart';
import 'package:core_theming/ui/designsystem/components/ct_flat_buttons.dart';
import 'package:core_theming/ui/designsystem/components/tbtn.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.white,
        appBar: AppBar(
          title: CTAppBarHeader('Buttons'),
          centerTitle: true,
          elevation: 3,
          backgroundColor: CTThemeColors.deepGray,
          iconTheme: IconThemeData(color:CTThemeColors.black),
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
                CTButtonDefault(
                  label: 'Elevated Button Default',
                  onPressed: () {
                    print('You tapped on CTButtonDefault');
                  },
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  child: CTPlainTextButton(
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
