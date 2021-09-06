import 'package:elektryk_website/features/home_page/view/home_page_widget.dart';
import 'package:elektryk_website/utils/responsiveness.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: const ResponsiveWidget(
          largeScreen: HomePageWidget(),
          smallScreen: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: HomePageWidget(),
          )),
    );
  }
}
