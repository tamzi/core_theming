import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logger/logger.dart';

import 'atoms/ct_colour.dart';


const CTThemeData _default = CTThemeData(
  /// Colors
  bluish: CTThemeColors.bluish,
  darkBluish: CTThemeColors.darkBluish,
  reddish: CTThemeColors.reddish,
  warmRed: CTThemeColors.warmRed,
  limeGreenish: CTThemeColors.limeGreenish,
  white: CTThemeColors.white,
  black: CTThemeColors.black,
  gray: CTThemeColors.gray,
  deepGray: CTThemeColors.deepGray,
  darkGray: CTThemeColors.lightGray,
  lightGray: CTThemeColors.lightGray,
  buttonRed: CTThemeColors.buttonRed,

  /// All Text Fields
  appBarHeader: TextStyle(
      fontSize: 27.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: CTThemeColors.black),
  appBarDescriptionText: TextStyle(
      fontSize: 13.0,
      height: 1.3,
      letterSpacing: 0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: CTThemeColors.darkGray),

  header: TextStyle(
      fontSize: 37.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w900,
      color: CTThemeColors.black),
  title: TextStyle(
      fontSize: 33.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: CTThemeColors.black),
  bodyText: TextStyle(
      fontSize: 13.0,
      height: 1.7,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.normal,
      color: CTThemeColors.darkGray),
  descriptionText: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.black),
  cardHeader: TextStyle(
      fontSize: 17.0,
      height: 1.3,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w700,
      color: CTThemeColors.black),

  ///TextButtons
  ///The buttonText will be the default button text for all the
  ///buttons in the application.
  buttonText: TextStyle(
      fontSize: 17.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.black),
  flatButtonText: TextStyle(
      fontSize: 15.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'DMSans',
      fontWeight: FontWeight.w500,
      color: CTThemeColors.black),
  buttonTextWhite: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.white),
  buttonTextError: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.reddish),
  buttonTextSuccess: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.limeGreenish),

  ///FORM
  ///
  inputText: TextStyle(
      fontSize: 13.0,
      height: 1.2,
      letterSpacing: -0.3,
      fontFamily: 'Gilroy',
      fontWeight: FontWeight.w300,
      color: CTThemeColors.black),
);

class CTThemeData {
  /// Colors
  final Color? bluish;
  final Color? darkBluish;
  final Color? black;
  final Color? reddish;
  final Color? warmRed;
  final Color? limeGreenish;
  final Color? white;
  final Color? gray;
  final Color? deepGray;
  final Color? darkGray;
  final Color? lightGray;

  final Color? buttonRed;

  final CTThemeColors? colors;

  //Text
  ///AppBar Texts
  final TextStyle? appBarHeader;
  final TextStyle? appBarDescriptionText;

  ///Content Texts
  final TextStyle? header;
  final TextStyle? title;
  final TextStyle? bodyText;
  final TextStyle? descriptionText;
  final TextStyle? cardHeader;

  /// ButtonTexts
  final TextStyle? buttonText;
  final TextStyle? buttonTextError;
  final TextStyle? buttonTextSuccess;
  final TextStyle? buttonTextWhite;
  final TextStyle? flatButtonText;

  //Form Texts
  final TextStyle? inputText;

  const CTThemeData({
    /// Colors
    this.bluish,
    this.darkBluish,
    this.black,
    this.reddish,
    this.warmRed,
    this.limeGreenish,
    this.gray,
    this.deepGray,
    this.darkGray,
    this.lightGray,
    this.white,
    this.colors,
    this.buttonRed,
    // TEXT
    /// AppBar Text
    this.appBarHeader,
    this.appBarDescriptionText,

    /// Content Text
    this.header,
    this.title,
    this.bodyText,
    this.descriptionText,
    this.cardHeader,
    this.inputText,

    /// ButtonTexts
    this.buttonText,
    this.flatButtonText,
    this.buttonTextError,
    this.buttonTextSuccess,
    this.buttonTextWhite,
  });
}

/// The JobFinder Theme.
///
/// This is the theme for the Job Finder UI Component that make up the
/// Job Finder design system for the  application.
///
/// **Note**
/// This is separate to the Flutter Material [Theme] class.
/// See Usage below.
///
/// The values for the Theme are provided by [CTThemeData].
/// (The properties of [CTThemeData] are the design atoms for the UI.)
///
/// The default theme values (aka fallback theme) used is considered the
/// standard theme configuration. This can be replaced in the
/// JobFinderThemeData constructor if needed.
///
/// The fields in this class represent the design atoms in the Job Finder
/// design system. They are referenced directly by the UI Component Widgets
/// for the design system. This means that changing the values will change
/// the visual styling of the UI Components.
class CTTheme extends InheritedWidget {
  CTTheme({this.data = _default, required this.child}) : super(child: child);

  /// The design atoms used by UI Components to apply styling.
  final CTThemeData data;
  final Widget child;

  /// Use to get a reference to the nearest available [CTThemeData] anywhere
  /// in the widget tree below the child widget.
  ///
  /// ```
  /// var themeData = JFTheme.of(context);
  /// ```
  static CTThemeData of(BuildContext context) {
    ///This will help in logging instances where the theme
    ///is not found on the console.
    ///Ideally this should not be case as we will follow strcitly
    ///the design system
    final Logger staticLogger = Logger();
    final CTTheme? currentTheme =
        context.dependOnInheritedWidgetOfExactType<CTTheme>();
    if (currentTheme == null) {
      staticLogger.w("JobFinderTheme missing. Will apply the default theme");
      return _default;
    }
    return currentTheme.data;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return data == (oldWidget as CTTheme).data;
  }
}

///
/// TO DO
/// - Write notes for the Design System by combining the 3 ideas
/// Always Prefer odd numbers instead of even ones i.e  3,7, 13.17.19 etc :)
/// 3,7, 13.17.19 etc
