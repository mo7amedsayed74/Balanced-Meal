import 'package:balanced_meal/cubit/cubit.dart';
import 'package:balanced_meal/cubit/states.dart';
import 'package:balanced_meal/custom_widgets/custom_button.dart';
import 'package:balanced_meal/helper.dart';
import 'package:balanced_meal/screens/order_summary_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarbsAndPrice extends StatelessWidget {
  const CarbsAndPrice({super.key, required this.buttonText});
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit,AppStates>(
      builder: (context,state){
        return Container(
          color: const Color(0xFFFFFFFF),
          padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Text('Cals'),
                  const Spacer(),
                  Text(
                    '${AppCubit.get(context).orderCalories.toInt()} Cal out of ${AppCubit.get(context).userCalories.round()} Cal',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                children: [
                  const Text('Price'),
                  const Spacer(),
                  Text('\$${AppCubit.get(context).price}',style: TextStyle(color: Theme.of(context).primaryColor)),
                ],
              ),
              const SizedBox(height: 6),
              CustomButton(
                text: buttonText,
                onPressed: () {
                  //print(orders);
                  context.push(goTo: const OrderSummeryScreen());
                },
              ),
              const SizedBox(height: 6),
            ],
          ),
        );
      },
    );
  }
}
