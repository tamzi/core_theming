import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:core_theming/ui/designsystem/components/ct_buttons.dart';
import 'package:core_theming/ui/designsystem/components/ct_cards.dart';
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
          title: CTAppBarHeader('CT Cards'),
            centerTitle: true,
            elevation: 3,
            backgroundColor: CTThemeColors.deepGrey,
            iconTheme: IconThemeData(color:CTThemeColors.black)
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(edgeInsets20),
            child: SingleChildScrollView(
              child: Column(children: <Widget>[
                Container(
                  width: double.infinity,
                  child: CardInfo(
                    messageText: 'This is a message',
                    key: UniqueKey(),

                  ),

                ),
                Container(
                  width: double.infinity,
                  child: CTButtonBlackWhite(
                    label: 'Button BlackWhite',
                    onPressed: () {
                      print('You tapped on Button BlackWhite');
                    },
                  ),
                ),


              ]),
            ),
          ),
        ));
  }
}

/*
class JFCard extends StatelessWidget {
  final double edgeInsets17 = scale.value(17.0);
  final double edgeInsets23 = scale.value(23.0);
  final double bmi;
  final double minWeight;
  final double maxWeight;

  JFCard(
      {
        required Key key,
        required this.bmi,
        required this.minWeight,
        required this.maxWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: CTThemeColors.grey,
      shadowColor: CTThemeColors.grey,
      elevation: 10,
      margin: EdgeInsets.all(edgeInsets17),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: edgeInsets23),
        child: Container(
          width: double.infinity,
          child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: edgeInsets17),
                  child: CTTitle('Car Title',),
                ),
                Padding(
                    padding: EdgeInsets.only(top: edgeInsets17),
                    child: CTBodyText("Body Text")
                ),
              ]),
        ),
      ),
    );
  }
}

*/
