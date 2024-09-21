import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_cubit.dart';
import 'app.dart';

void main() => runApp(
      BlocProvider(
        create: (context) => DataCubit()..readBinaryFile(),
        lazy: false,
        child: const App(),
      ),
    );
