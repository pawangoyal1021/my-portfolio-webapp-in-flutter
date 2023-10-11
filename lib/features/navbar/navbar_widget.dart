import 'package:pawan_portfolio_website/design/utils/app_colors.dart';
import 'package:pawan_portfolio_website/design/widgets/app_marquee_widget.dart';
import 'package:pawan_portfolio_website/design/widgets/buttons/app_outlined_button.dart';
import 'package:pawan_portfolio_website/features/navbar/ui/mobile/navbar_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      tablet: (p0) => const NavBarMobileWidget(),
      mobile: (p0) => const NavBarMobileWidget(),
    );
  }
}
