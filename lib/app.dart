import 'package:flutter/material.dart';
import 'package:mecaro/theme.dart';
import 'package:mecaro/widgets/app_bar_widget.dart';
import 'package:mecaro/widgets/main_page_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: Scaffold(
        appBar: AppBar(flexibleSpace: const AppBarWidget()),
        bottomNavigationBar: const BottomAppBar(color: Colors.black),
        body: const MainPageWidget(),
      ),
    );
  }
}
