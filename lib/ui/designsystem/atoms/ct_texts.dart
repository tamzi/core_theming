
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:core_theming/ui/designsystem/theme.dart';

abstract class _CTtext extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  const _CTtext({
    Key? key,
    required this.text,
    required this.textAlign,
    required this.textOverflow,
  })  : assert(text != null, "A non-null String must be provided"),
        super(key: key);
}

// APPBAR TEXT ELEMENTS
/// THese are texts tht aiwll be used generally in the
/// appbars and sliverBars
/// APpBarHEader
class CTAppBarHeader extends _CTtext {
  const CTAppBarHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).appBarHeader,
    );
  }
}

/// APpBarDescription Text
class CTAppBarDescription extends _CTtext {
  const CTAppBarDescription(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).appBarDescriptionText,
    );
  }
}

// CONTENT Texts
/// Header Texts
/// These are used in the various text items
class CTHeader extends _CTtext {
  const CTHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).header,
    );
  }
}

// Title Widget
/// These wil be used in the overall title elements.
/// these will be placed in the various segments
class CTTitle extends _CTtext {
  const CTTitle(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).title,
    );
  }
}

// Description Text Widget
/// These are used in the various card element parts
class CTDescriptionText extends _CTtext {
  const CTDescriptionText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).descriptionText,
    );
  }
}

class CTParagraphText extends _CTtext {
  const CTParagraphText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).descriptionText,
    );
  }
}

// Body Text
/// This is the body text that will exist in the project
class CTBodyText extends _CTtext {
  const CTBodyText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).bodyText,
    );
  }
}

// CARD Texts
/// These are used in the various hEaders in the cards.
/// The cards here include Job Cards and Infomation cards.
// Card Header
class CTCardHeader extends _CTtext {
  const CTCardHeader(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).header,
    );
  }
}

// BUTTON TEXTS
///  - These texts will appear on the various buttons
// Normal ButtonTexts
/// This is the default button text element.
/// This will be of the color black.
class CTBtnText extends _CTtext {
  const CTBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).buttonText,
    );
  }
}

// Flat Button Text
class CTFlatBtnText extends _CTtext {
  const CTFlatBtnText(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).flatButtonText,
    );
  }
}

//White Button Text
class CTBtnTextWhite extends _CTtext {
  const CTBtnTextWhite(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).buttonTextWhite,
    );
  }
}

// Error Button Text
class CTBtnTextError extends _CTtext {
  const CTBtnTextError(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).buttonTextError,
    );
  }
}

// Success Button Text
class CTBtnTextSuccess extends _CTtext {
  const CTBtnTextSuccess(String text,
      {Key? key,
      TextAlign textAlign = TextAlign.start,
      TextOverflow textOverflow = TextOverflow.visible})
      : super(text: text, textAlign: textAlign, textOverflow: textOverflow);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: textOverflow,
      style: CTTheme.of(context).buttonTextSuccess,
    );
  }
}
