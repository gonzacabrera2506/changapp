import 'package:changapp/shared/custom_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridViewWoven extends StatelessWidget {
  const CustomGridViewWoven({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: SizedBox(
            width: screenWidth - 45,
            height: screenHeight - 45,
            // decoration: BoxDecoration(
            //     color: Colors.red,
            //     boxShadow: const [
            //       BoxShadow(blurRadius: 3.5, color: Colors.grey)
            //     ],
            //     borderRadius: BorderRadius.circular(20)),
            child: GridView.custom(
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                pattern: [
                  const WovenGridTile(1),
                  const WovenGridTile(
                    3.5 / 6,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFffae50),
                      boxShadow: const [
                        BoxShadow(blurRadius: 3.5, color: Colors.grey)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ignore: prefer_const_constructors
                      CustomRowWidget(
                        alignment: MainAxisAlignment.center,
                        widgets: const [
                          Icon(Icons.access_alarms),
                        ],
                      ),
                      CustomRowWidget(
                        alignment: MainAxisAlignment.center,
                        widgets: [
                          Text(
                            "Hola $index",
                            style: const TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                childCount: 30,
              ),
            ),
          ),
        ));
  }
}
