import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomGridViewWoven extends StatelessWidget {
  const CustomGridViewWoven({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          width: 500,
          height: 500,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [BoxShadow(blurRadius: 3.5, color: Colors.grey)],
              borderRadius: BorderRadius.circular(20)),
          child: GridView.custom(
            gridDelegate: SliverWovenGridDelegate.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              pattern: [
                const WovenGridTile(1),
                const WovenGridTile(
                  5 / 7,
                  crossAxisRatio: 0.9,
                  alignment: AlignmentDirectional.centerEnd,
                ),
              ],
            ),
            childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(blurRadius: 3.5, color: Colors.grey)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Hola $index",
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              childCount: 20,
            ),
          ),
        ));
  }
}
