import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;

import '../theme.dart';

/*

Due to uniqueness of cards, we will construct each card
instead of having a global card constructor for the cards adn extedning those
properties to individual cards:
 We will use jobFInder project as  an inspiration to make the cards.
 You can see the jobfinder project here:
 https://github.com/tamzi/jobfinder

1. Brief JobCard:
- (Seen here:https://www.behance.net/gallery/92923159/LOJO-Job-Finder-App)
- Logo on left, Role and company at the center, 3 action icons at right>>(bookmark/Apply)
- Salary/ Location

2. DetailedJobcard:
- (Seen here:https://dribbble.com/shots/12322909/attachments/3938389?mode=media
and https://www.behance.net/gallery/101334053/Job-Finder_Mobile-App-Concept)
- LeftTop: Role Bold, right bookmark/Like-icon -Bookmark icon makes sense
in this context
- LeftBelowTop: Rate per hour, FullTime?part time
- Blow:Logo, Company Name and location
- Days left to apply
/// On selection, card changes from white to black

3. BriefDetailedJobCard
- (Seen here:https://www.behance.net/gallery/92923159/LOJO-Job-Finder-App)
- Top with space in between: CLeft:Company Logo & JobMode(FullTime/ PartTime)
- Spacer
- Role
- Remuneration && Location

4. Bigger brief card
- (Seen here:https://www.behance.net/gallery/101334053/Job-Finder_Mobile-App-Concept)
- Top with space in between: CLeft:Company Logo &  bookmark button
- Company
- Role
- Remuneration && Location

5. ContentCards// JFCard
- (Seen here: https://dribbble.com/shots/12322909-Job-Finder-App-Design/attachments/3938389?mode=media)
- $Title
- $BodyText

6. QuickAction Cards
- (Seen here: https://www.behance.net/gallery/101334053/Job-Finder_Mobile-App-Concept)
- Like icon on the left apply button on the right



*/

class CTContentCard extends StatelessWidget {
/*
  This card is the most basic of them: It takes a title
  - (Seen here: https://dribbble.com/shots/12322909-Job-Finder-App-Design/attachments/3938389?mode=media)
  - $Title
  - $BodyText
  */
  // Scale variables
  final double value17 = scale.value(17.0);
  final double value23 = scale.value(23.0);
  final double edgeInsets10 = scale.value(23.0);
  // Card constructor required
  final String cardTitle;
  final String cardBodyText;


  CTContentCard(
      {
        required Key key,
        required this.cardTitle,
        required this.cardBodyText,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      key: key,
      color: CTThemeColors.grey,
      shadowColor: CTThemeColors.grey,
      elevation: 10,
      margin: EdgeInsets.all(value17),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: value23),
        child: Container(
          width: double.infinity,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CTTitle(cardTitle),
                Spacer(flex: 10,),
                CTBodyText(cardBodyText)
          ]),
        ),
      ),
    );
  }
}

class CardInfo extends StatelessWidget {
  final double leftPadding = scale.value(24.0);
  final double topPadding = scale.value(24.0);
  final double rightPadding = scale.value(24.0);
  final double bottomPadding = scale.value(16.0);

  final double containerWidth = scale.value(327.0);
  final double cardWidth = scale.value(327.0);
  final double cardHeight = scale.value(152);
  final double cardContainerInset = scale.value(16.0);
  final double iconSize = scale.value(30);

  final double leftCardPadding = scale.value(10.0);
  final double topCardPadding = scale.value(8.0);
  final double rightCardPadding = scale.value(8.0);
  final double bottomCardPadding = scale.value(10.0);

  final double elevation = scale.value(1.0);
  final double messageTextSize = scale.value(14.0);

  final String messageText;

  CardInfo({
    required Key key,
    required this.messageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          leftPadding, topPadding, rightPadding, bottomPadding),
      child: Container(
       width: double.infinity,
        child: Card(
          color: CTThemeColors.lightGrey,
          elevation: elevation,
          child: Container(
            width: cardWidth,
            margin: EdgeInsets.fromLTRB(leftCardPadding, topCardPadding,
                rightCardPadding, bottomCardPadding),
            child: Row(
              children: <Widget>[
                ListTile(
                  leading: Icon(
                    Icons.error_outline,
                    color: CTThemeColors.black,
                    size: iconSize,
                  ),
                  title: Text(
                    messageText,
                    style: TextStyle(
                        color: CTTheme.of(context).black,
                        fontSize: messageTextSize),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardInfoAction extends StatelessWidget {
  final double leftPadding = scale.value(24.0);
  final double topPadding = scale.value(24.0);
  final double rightPadding = scale.value(24.0);
  final double bottomPadding = scale.value(16.0);

  final double containerWidth = scale.value(327.0);
  final double cardWidth = scale.value(327.0);
  final double cardHeight = scale.value(152);
  final double cardContainerInset = scale.value(6.0);

  final double elevation = scale.value(8.0);
  final double messageTextSize = scale.value(14.0);
  final double messageActionButtonFontSize = scale.value(16.0);

  final String messageText;
  final String leftFlatButton;
  final String rightFlatButton;

  CardInfoAction({
    required Key key,
    required this.leftFlatButton,
    required this.rightFlatButton,
    required this.messageText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          leftPadding, topPadding, rightPadding, bottomPadding),
      child: Container(
        width: containerWidth,
        child: Card(
          color: CTThemeColors.white,
          elevation: elevation,
          child: Container(
            width: cardWidth,

            ///margin: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Image.asset('assets/img/grey_box.png'),
                  title: Text(
                    messageText,
                    style: TextStyle(
                        color: CTTheme.of(context).black,
                        fontSize: messageTextSize),
                  ),
                ),
                ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        leftFlatButton,
                        style: TextStyle(
                            color: CTTheme.of(context).black,
                            fontSize: messageActionButtonFontSize),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        rightFlatButton,
                        style: TextStyle(
                            color: CTTheme.of(context).black,
                            fontSize: messageActionButtonFontSize),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
