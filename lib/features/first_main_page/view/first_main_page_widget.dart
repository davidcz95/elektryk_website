import 'package:elektryk_website/features/navigaton_bar/navigation_bar.dart';
import 'package:elektryk_website/utils/custom_text.dart';
import 'package:flutter/material.dart';

class FirstMainPageWidget extends StatelessWidget {
  FirstMainPageWidget({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          topNavigationBar(context, key),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height * .4,
                ),
                const Positioned.fill(
                  child: Align(
                    child: CustomText(
                      text: 'O nas',
                      showDivider: false,
                      color: Colors.white,
                      size: 45,
                      weight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),

      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     const SliverAppBar(
      //       pinned: true,
      //       expandedHeight: 160,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Text('SliverAppBar'),
      //       ),
      //     ),
      //     const SliverToBoxAdapter(
      //       child: SizedBox(
      //         height: 20,
      //         child: Center(
      //           child: Text('Scroll to see the SliverAppBar in effect.'),
      //         ),
      //       ),
      //     ),
      //     SliverList(
      //       delegate: SliverChildBuilderDelegate(
      //         (BuildContext context, int index) {
      //           return Container(
      //             color: index.isOdd ? Colors.white : Colors.black12,
      //             height: 100,
      //             child: Center(
      //               child: Text('$index', textScaleFactor: 5),
      //             ),
      //           );
      //         },
      //         childCount: 20,
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
