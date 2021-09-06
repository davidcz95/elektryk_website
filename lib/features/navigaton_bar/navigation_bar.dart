import 'package:elektryk_website/utils/custom_text.dart';
import 'package:elektryk_website/utils/responsiveness.dart';
import 'package:flutter/material.dart';

SliverAppBar topNavigationBar(
        BuildContext context, GlobalKey<ScaffoldState> key) =>
    SliverAppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        centerTitle: true,
        pinned: true,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Image.asset(
                "images/light.png",
                width: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
        flexibleSpace: FlexibleSpaceBar(
          title: !ResponsiveWidget.isSmallScreen(context)
              ? Row(
                  children: [
                    Expanded(flex: 5, child: Container()),
                    Expanded(
                      flex: 5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          CustomText(
                            text: "O nas",
                            color: Colors.white,
                            size: 17,
                            weight: FontWeight.bold,
                          ),

                          CustomText(
                            text: "Oferta",
                            color: Colors.white,
                            size: 17,
                            weight: FontWeight.bold,
                          ),

                          CustomText(
                            text: "Portfolio",
                            color: Colors.white,
                            size: 17,
                            weight: FontWeight.bold,
                          ),

                          CustomText(
                            text: "Kontakt",
                            color: Colors.white,
                            size: 17,
                            weight: FontWeight.bold,
                          ),
                          // Container(
                          //   width: 1,
                          //   height: 22,
                          //   color: Colors.grey[300],
                          // ),
                          // const SizedBox(
                          //   width: 24,
                          // ),
                          // CustomText(
                          //   text: "Santos Enoque",
                          //   color: Colors.grey[300],
                          // ),
                          // const SizedBox(
                          //   width: 16,
                          // ),
                          // Container(
                          //   decoration: BoxDecoration(
                          //       color: Colors.orange.withOpacity(.5),
                          //       borderRadius: BorderRadius.circular(30)),
                          //   child: Container(
                          //     decoration: BoxDecoration(
                          //         color: Colors.white, borderRadius: BorderRadius.circular(30)),
                          //     padding: const EdgeInsets.all(2),
                          //     margin: const EdgeInsets.all(2),
                          //     child: const CircleAvatar(
                          //       backgroundColor: Colors.amber,
                          //       child: Icon(
                          //         Icons.person_outline,
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: Container()),
                    IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {},
                        color: Colors.white),
                  ],
                ),
          // iconTheme: const IconThemeData(color: Colors.black),
          // elevation: 0,
          // backgroundColor: Colors.transparent,
        ));
