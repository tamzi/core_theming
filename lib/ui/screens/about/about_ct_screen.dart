import 'package:core_theming/ui/designsystem/components/tbtn.dart';
import 'package:flutter/material.dart';
import 'package:core_theming/ui/designsystem/utils/scale.dart' as scale;
import 'package:core_theming/ui/designsystem/theme.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_colour.dart';
import 'package:core_theming/ui/designsystem/atoms/ct_texts.dart';

void main() {
  runApp(CTTheme(
      child: MaterialApp(
    title: "about Core ThemeComponent gallery viewer Application",
    home: AboutCoreTheming(),
  )));
}

class AboutCoreTheming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CTThemeColors.lightGray,
        appBar: AppBar(
          title: CTAppBarHeader(
            'about core theming',
          ),
          centerTitle: true,
          elevation: 7,
          backgroundColor: CTThemeColors.deepGray,
          iconTheme: IconThemeData(color: CTThemeColors.black),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(scale.value(10.0)),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  // Content Texts
                  CTParagraphText(
                    "Core theming is a design system project that kicks starts "
                        "your designing of layouts in flutter."
                    "A Design System is the single source of truth which groups "
                        "all the elements that will allow the teams to design, "
                        "realize and develop a product. "
                        "So a Design System is not a deliverable, "
                        "but a set of deliverables. It will evolve constantly "
                        "with the product, the tools and the new technologies."
                    "This is ideal with large scale applications in flutter with"
                        " many developers."
                    ,
                  ),
                  Divider(),
                  Container(
                    width: double.infinity,
                    child: CTButtonDefault(
                      label: 'home',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  // AppBar Texts
                ],
              ),
            ),
          ),
        ));
  }
}

/*
ConstrainedBox(
constraints: BoxConstraints.tightFor(
width: scale.value(300.0), height: scale.value(200.0)
),
child: CTButtonDefault(
label: 'home',
onPressed: () {
Navigator.pushNamed(context, '/home');
},
),*/
