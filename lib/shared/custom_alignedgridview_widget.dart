import 'package:flutter/material.dart';
import 'package:changapp/shared/custom_row_widget.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CustomAlignedgridviewWidget extends StatefulWidget {
  final List<Icon> changasIcon;
  final List<String> changasDescription;

  const CustomAlignedgridviewWidget({
    super.key,
    required this.changasDescription,
    required this.changasIcon,
  });

  @override
  State<CustomAlignedgridviewWidget> createState() =>
      _CustomAlignedgridviewWidgetState();
}

class _CustomAlignedgridviewWidgetState
    extends State<CustomAlignedgridviewWidget> {
  List<bool> _selectedItems = List<bool>.filled(27, false);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
          width: screenWidth - 45,
          height: screenHeight - 45,
          child: AlignedGridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              itemCount: 27,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedItems[index] = !_selectedItems[index];
                      });
                    },
                    child: Container(
                      width: 75,
                      height: 95,
                      decoration: BoxDecoration(
                          color: _selectedItems[index]
                              ? const Color(0xFFF4D8B9)
                              : const Color(0xFFffae50),
                          boxShadow: const [
                            BoxShadow(blurRadius: 3.5, color: Colors.grey)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomRowWidget(
                            alignment: MainAxisAlignment.center,
                            widgets: [
                              widget.changasIcon[index],
                            ],
                          ),
                          const SizedBox(height: 10),
                          CustomRowWidget(
                            alignment: MainAxisAlignment.center,
                            widgets: [
                              Text(
                                widget.changasDescription[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ).animate().scale(duration: 300.ms),
                  ))),
    );
  }
}
