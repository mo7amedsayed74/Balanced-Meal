import 'package:balanced_meal/cubit/bloc_observer.dart';
import 'package:balanced_meal/cubit/cubit.dart';
import 'package:balanced_meal/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xFFF25700),
          scaffoldBackgroundColor: Colors.grey[100],
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFFFFFFFF)),
          textTheme: const TextTheme(
            displayLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        home: const WelcomeScreen(),
        //home: const CreateOrderScreen(),
      ),
    );
  }
}
