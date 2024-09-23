import 'package:flutter/material.dart';

class DecipheredMessagePage extends StatelessWidget {
  const DecipheredMessagePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('\$GPGSV,1,1,00*79'),
      ),
      body: Column(
        children: [
          Table(
            columnWidths: const {
              0: FixedColumnWidth(205),
            },
            border: TableBorder.all(
              color: Colors.black,
              width: 1,
            ),
            children: const [
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                children: [
                  CustomCell(text: 'Message Type:'),
                  CustomCell(
                    text: 'GPS Satellites',
                    isCentered: true,
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 240, 240),
                ),
                children: [
                  CustomCell(text: 'Received message:'),
                  CustomCell(
                    text: '\$GPGSV,1,1,00*79',
                    isCentered: true,
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                children: [
                  CustomCell(text: 'Total number of messages:'),
                  CustomCell(
                    text: '1',
                    isCentered: true,
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 240, 240),
                ),
                children: [
                  CustomCell(text: 'Message number:'),
                  CustomCell(
                    text: '1',
                    isCentered: true,
                  ),
                ],
              ),
              TableRow(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                children: [
                  CustomCell(text: 'Number of satellites in view'),
                  CustomCell(
                    text: 'No satellites in view',
                    isCentered: true,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CustomCell extends StatelessWidget {
  final String text;
  final bool isCentered;
  const CustomCell({
    required this.text,
    this.isCentered = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text,
            textAlign: isCentered ? TextAlign.center : TextAlign.left),
      ),
    );
  }
}
