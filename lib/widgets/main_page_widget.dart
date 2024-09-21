import 'package:flutter/material.dart';

import 'package:mecaro/widgets/connection_status.dart';
import 'package:mecaro/widgets/parsed_text_widget.dart';
import 'package:mecaro/widgets/result_page.dart';

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
            const SizedBox(width: double.infinity, height: 20),
            const ResultPage(),
            const SizedBox(width: double.infinity, height: 20),
            Column(
              children: [
                Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 255, 240, 240),
                    child:
                        const Center(child: Text('ТЕКСТ ПОСЛЕ СОРТИРОВКИ:'))),
                Container(
                    height: 300,
                    color: Colors.white,
                    child: const ParsedTextWidget()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
