import 'package:flutter/material.dart';

class ScrollingTextWidget extends StatefulWidget {
  final List<String> dataLines;

  const ScrollingTextWidget({super.key, required this.dataLines});

  @override
  _ScrollingTextWidgetState createState() => _ScrollingTextWidgetState();
}

class _ScrollingTextWidgetState extends State<ScrollingTextWidget> {
  final ScrollController _scrollController = ScrollController();
  final List<String> _displayedLines = [];

  @override
  void initState() {
    super.initState();
    _addDataLines();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _addDataLines() {
    if (widget.dataLines.isNotEmpty) {
      final line = widget.dataLines.removeAt(0);
      setState(() {
        _displayedLines.add(line);
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _displayedLines.map((line) => Text(line)).toList(),
      ),
    );
  }
}
