import 'package:bloc_pattern/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_pattern/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Center(
          child: BlocBuilder<InternetBloc, InternetState>(
            builder: (context, state) {
              if (state is InternetGainedState) {
                return Text("Connected");
              } else if (state is InternetLostState) {
                return Text("Connection lost");
              } else {
                return Text("Loading...");
              }
              ;
            },
          ),
        ),
      ),
    );
  }
}
