import 'package:balanced_meal/components/carbs_and_price.dart';
import 'package:balanced_meal/components/order_summary_card.dart';
import 'package:balanced_meal/cubit/cubit.dart';
import 'package:balanced_meal/cubit/states.dart';
import 'package:balanced_meal/custom_widgets/back_button.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderSummeryScreen extends StatelessWidget {
  const OrderSummeryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        AppCubit cubit = AppCubit.get(context);
        cubit.keysOfOrders = cubit.orders.keys.toList();
        return Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(con: context),
            centerTitle: true,
            title: Text(
              'Order Summary',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 12,
                    bottom: 2,
                    left: 12,
                    right: 12,
                  ),
                  child: ConditionalBuilder(
                    condition: cubit.keysOfOrders.isNotEmpty,
                    builder: (context) => ListView.separated(
                      itemBuilder: (context, index) {
                        return OrderSummaryCard(
                            item: AppCubit.get(context)
                                .orders[cubit.keysOfOrders[index]]!);
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 8),
                      itemCount: cubit.keysOfOrders.length,
                    ),
                    fallback: (context) => const Center(
                      child: Text(
                        'Make your order now',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const CarbsAndPrice(buttonText: 'Confirm'),
            ],
          ),
        );
      },
    );
  }
}
