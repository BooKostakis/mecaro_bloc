import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_cubit.dart';
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
        appBar: AppBar(
          flexibleSpace: const AppBarWidget(),
        ),
        body: BlocProvider(
          create: (context) => DataCubit()..readBinaryFile(),
          lazy: false,
          child: const MainPageWidget(),
        ),
      ),
    );
  }
}
