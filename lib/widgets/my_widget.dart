import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/number_bloc.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.amber,
      child: BlocBuilder<NumberBloc, NumberState>(builder: (context, state) {
        if (state is NumberLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        }

        if (state is NumberLoaded) {
          return Center(child: Text(state.number));
        }

        return Container();
      }),
    );
  }
}

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.red,
      child: BlocBuilder<NumberBloc, NumberState>(builder: (context, state) {
        if (state is NumberLoading) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.white));
        }

        if (state is NumberLoaded) {
          return Center(child: Text(state.number));
        }

        return Container();
      }),
    );
  }
}

class ThirdView extends StatefulWidget {
  const ThirdView({super.key});

  @override
  State<ThirdView> createState() => _ThirdViewState();
}

class _ThirdViewState extends State<ThirdView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.blue,
      child: BlocBuilder<NumberBloc, NumberState>(builder: (context, state) {
        if (state is NumberLoading) {
          return const Center(
              child: CircularProgressIndicator(color: Colors.white));
        }

        if (state is NumberLoaded) {
          return Center(child: Text(state.number));
        }

        return Container();
      }),
    );
  }
}
