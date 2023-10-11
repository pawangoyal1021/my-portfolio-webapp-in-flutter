import 'package:pawan_portfolio_website/core/config/environment.dart';
import 'package:pawan_portfolio_website/design/utils/app_theme.dart';
import 'package:pawan_portfolio_website/features/home/home_page.dart';
import 'package:pawan_portfolio_website/project/di/app_dependency_injection.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  Environment.initialize(flavour: Flavour.production);
  AppDependencyInjection.initDiServices();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      title: 'Pawan Goel👋 | Developer & Engineer',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
