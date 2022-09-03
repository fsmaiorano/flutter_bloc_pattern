import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern/src/pages/bloc/home_event.dart';
import 'package:flutter_bloc_pattern/src/pages/bloc/home_state.dart';

import 'src/pages/bloc/home_bloc.dart';
import 'src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<HomeBloc>(
        create: (context) =>
            HomeBloc(const HomeLoadingState())..add(HomeFetchListEvent()),
        child: const HomePage(),
      ),
    );
  }
}
