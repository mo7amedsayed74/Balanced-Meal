import 'package:balanced_meal/components/counter_buttons.dart';
import 'package:balanced_meal/cubit/cubit.dart';
import 'package:balanced_meal/cubit/states.dart';
import 'package:balanced_meal/custom_widgets/product_image.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrderCard extends StatelessWidget {
  const CreateOrderCard({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppStates>(
      builder: (context, state) {
        return Container(
          width: 200,
          height: 180,
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xFFFFFFFF),
          ),
          child: Column(
            children: [
              Expanded(
                child: ProductImage(imgUrl: item['imageUrl']),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(item['foodName']),
                  const Spacer(),
                  Text(
                    '${item['calories']} Cal',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Text('\$12'),
                  const Spacer(),
                  ConditionalBuilder(
                    condition: AppCubit.get(context).orders[item['itemId']] == null,
                    builder: (context) {
                      return ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Theme.of(context).primaryColor,
                          foregroundColor: const Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          AppCubit.get(context).addOnPressed(item: item);
                        },
                        child: const Text('add'),
                      );
                    },
                    fallback: (context) {
                      return CounterButtons(
                        numberOfPiece: AppCubit.get(context).orders[item['itemId']]!.numberOfPiece,
                        onPressedPlus: () {
                          AppCubit.get(context).plusOnPressed(item: AppCubit.get(context).orders[item['itemId']]!);
                        },
                        onPressedMinus: () {
                          AppCubit.get(context).minusOnPressed(item: AppCubit.get(context).orders[item['itemId']]!);
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
