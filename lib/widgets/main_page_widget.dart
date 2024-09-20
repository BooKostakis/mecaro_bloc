import 'package:flutter/material.dart';
import 'package:mecaro/data/view/data_view.dart';
import 'package:mecaro/widgets/connection_status.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ConnectionStatus(),
            const SizedBox(width: double.infinity, height: 8),
            ElevatedButton(onPressed: () {}, child: const Text('Connect')),
            const DataView()
          ],
        ),
      ),
    );
  }
}
