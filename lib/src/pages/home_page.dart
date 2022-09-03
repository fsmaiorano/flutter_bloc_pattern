import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc'),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        bloc: BlocProvider.of<HomeBloc>(context),
        builder: (context, state) {
          if (state is HomeLoadedState) {
            return ListView.builder(
              itemCount: state.items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('- ${state.items[index]}'),
                );
              },
            );
          }

          if (state is HomeEmptyListState) {
            return const Center(
              child: Text('Empty List'),
            );
          }

          if (state is HomeErrorState) {
            return const Center(
              child: Text('Error'),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
