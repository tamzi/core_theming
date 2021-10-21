import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;

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
