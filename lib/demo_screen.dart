import 'package:flutter/material.dart';

class DemoDart extends StatelessWidget {
  const DemoDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          children: [
            Text('Demo Dart'),
          ],
        ),
      ),
    );
  }
}
