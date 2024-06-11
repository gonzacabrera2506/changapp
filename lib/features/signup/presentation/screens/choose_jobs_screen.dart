import 'package:changapp/features/signup/presentation/widgets/jobs_widget.dart';
import 'package:flutter/material.dart';

class ChooseJobsScreen extends StatelessWidget {
  const ChooseJobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 30,
      ),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: JobsWidget(label: Text('data')),
            ),
          ],
        )),
      ),
    );
  }
}
