import 'package:flutter/material.dart';

class ConnectionStatus extends StatelessWidget {
  const ConnectionStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container()),
            Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                )),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Connection status:',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red,
                )),
            Expanded(child: Container()),
          ],
        ),
        const Text(
          'disconnected',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
