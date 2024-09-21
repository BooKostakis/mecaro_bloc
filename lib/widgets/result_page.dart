import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Table(
          columnWidths: const {
            0: FixedColumnWidth(205),
          },
          border: TableBorder.all(
            color: Colors.black,
            width: 1,
          ),
          children: [
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Принято сообщение:'),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: const Text('\$GPGSV,1,1,00*79')),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    color: const Color.fromARGB(255, 255, 240, 240),
                    padding: const EdgeInsets.all(8.0),
                    child:
                        const Text('Общее количество выводимых сообщений GSV:'),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    height: 87,
                    color: const Color.fromARGB(255, 255, 240, 240),
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(child: Text('1')),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Номер этого сообщения:'),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    height: 61,
                    color: Colors.white,
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(child: Text('1')),
                  ),
                ),
              ],
            ),
            TableRow(
              children: [
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    color: const Color.fromARGB(255, 255, 240, 240),
                    padding: const EdgeInsets.all(8.0),
                    child: const Text('Количество видимых спутников:'),
                  ),
                ),
                TableCell(
                  verticalAlignment: TableCellVerticalAlignment.middle,
                  child: Container(
                    height: 61,
                    color: const Color.fromARGB(255, 255, 240, 240),
                    padding: const EdgeInsets.all(8.0),
                    child: const Center(child: Text('00')),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
