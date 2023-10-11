import 'package:pawan_portfolio_website/features/contact_us/ui/contact_us_widget.dart';
import 'package:pawan_portfolio_website/features/highlights/ui/highlights_widget.dart';
import 'package:pawan_portfolio_website/features/intro/ui/intro_widget.dart';
import 'package:pawan_portfolio_website/features/navbar/navbar_widget.dart';
import 'package:pawan_portfolio_website/features/techstack/ui/techstack_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          NavBarWidget(),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  IntroWidget(),
                  HighlightsWidget(),
                  TechStackWidget(),
                  ContactUsWidget()
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
