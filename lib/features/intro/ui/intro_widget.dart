import 'package:pawan_portfolio_website/features/intro/ui/desktop/intro_desktop_widget.dart';
import 'package:pawan_portfolio_website/features/intro/ui/mobile/intro_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (context) {
        return const IntroMobileWidget();
      },
      desktop: (context) {
        return const IntroDesktopWidget();
      },
      mobile: (context) {
        return const IntroMobileWidget();
      },
    );
  }
}
