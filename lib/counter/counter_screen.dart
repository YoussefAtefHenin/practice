import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice/counter/cubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().increamentCounter();
                    },
                    icon: Icon(Icons.add, size: 40),
                  ),
                  Text(
                    context.read<CounterCubit>().counter.toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  IconButton(
                    onPressed: () {
                      context.read<CounterCubit>().decreamentCounter();
                    },
                    icon: Icon(Icons.remove, size: 40),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
