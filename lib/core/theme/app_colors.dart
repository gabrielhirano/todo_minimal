import 'package:flutter/material.dart';

abstract class IAppColors {
  //! Brands

  //! brandPrimary
  final colorBrandPrimaryMain = const Color(0xFF7A7979);
  final colorBrandPrimaryLight = const Color(0xFFFFFFFF);
  final colorBrandPrimaryDark = const Color(0xFF000000);

  // //! brandSecondary
  // final colorBrandSecondaryMain = const Color(0xFF653796);
  // final colorBrandSecondaryLight = const Color(0xFFE0D7EA);
  // final colorBrandSecondaryDark = const Color(0xFF472668);

  // //! Interaction
  // final colorInteractionDisabled = const Color(0xFFE6E6E6);
  // final colorInteractionDisabledDark = const Color(0xFF666666);
  // final colorInteractionDisabledLight = const Color(0xFFAAAAAA);

  // final colorFeedbackPositiveMain = const Color(0xFF029C60);
  // final colorFeedbackPositiveLight = const Color(0xFF04DA86);
  // final colorFeedbackPositiveDark = const Color(0xFF017447);

  // //! feedbackAlert

  // final colorFeedbackAlertMain = const Color(0xFFFFC700);
  // final colorFeedbackAlertLight = const Color(0xFFFFEEB3);
  // final colorFeedbackAlertDark = const Color(0xFFFFC700); // ?

  // //! feedbackInfo
  // final colorFeedbackInfoMain = const Color(0xFF11B1FF);
  // final colorFeedbackInfoLight = const Color(0xFFCFEFFF);
  // final colorFeedbackInfoDark = const Color(0xFF11B1FF); // ?

  // //! feedbackError
  // final colorFeedbackErrortMain = const Color(0xFFE30303);
  // final colorFeedbackErrorLight = const Color(0xFFFFDDDD);
  // final colorFeedbackErrorDark = const Color(0xFFA30303);

  // //! feedbackOffline
  // final colorBrandOfflineMain = const Color(0xFF653796);
  // final colorBrandOfflineLight = const Color(0xFFE0D7EA);
  // final colorBrandOfflineDark = const Color(0xFF472668);

  // //! Support
  // final colorShadow = const Color(0xFF666666);
  // final colorIconPrimary = const Color(0xFFFFFFFF);

  // // Color get colorIconSecondary;
  // // Color get colorSeparatorBorder;

  // // //! Background
  // // Color get colorBackgroundMain;
  // // Color get colorBackgroundMainLight;
  // // Color get colorBackgroundField;

  // //! Text
  // final colorTextMain = const Color(0xFFFFFFFF);
  // final colorTextDisabled = const Color(0xFFAAAAAA);
  // final colorTextPlaceholder = const Color(0xFFAAAAAA);

  // Color get colorTextPrimary;
  // Color get colorTextSecondary;
}

class AppColors extends IAppColors {
  // bool get _light {
  //   return AppThemeProvider.currentTheme == AppThemeType.light;
  // }

  // @override
  // Color get colorBackgroundMain => _light ? const Color(0xFFFFFCFA) : const Color(0xFF333333);

  // @override
  // Color get colorBackgroundMainLight => _light ? Colors.white : const Color(0xFF444444);

  // @override
  // Color get colorBackgroundField => _light ? const Color(0xFFF8F5F5) : const Color(0xFF444444);

  // @override
  // Color get colorIconSecondary => _light ? const Color(0xFF666666) : const Color(0xFFE6E6E6);

  // @override
  // Color get colorTextPrimary => _light ? const Color(0xFF444444) : const Color(0xFFFFFFFF);

  // @override
  // Color get colorTextSecondary => _light ? const Color(0xFF666666) : const Color(0xFFE6E6E6);

  // @override
  // Color get colorSeparatorBorder => _light ? const Color(0xFFFFE9DD) : const Color(0xFF666666);
}
