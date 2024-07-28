import 'package:flutter/material.dart';
import 'package:changapp/shared/custom_alignedGridView_widget.dart';
import 'package:changapp/constants/changas.dart';

class JobsWidget extends StatefulWidget {
  const JobsWidget({super.key});

  @override
  State<JobsWidget> createState() => _JobsWidgetState();
}

class _JobsWidgetState extends State<JobsWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Form(
            key: _formKey,
            // ignore: prefer_const_constructors
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAlignedgridviewWidget(
                    changasIcon: changasIcons,
                    changasDescription: changasDescription,
                  ),
                ])));
  }
}
