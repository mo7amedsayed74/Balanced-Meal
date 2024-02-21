import 'package:balanced_meal/components/carbs_and_price.dart';
import 'package:balanced_meal/components/category.dart';
import 'package:balanced_meal/cubit/cubit.dart';
import 'package:balanced_meal/cubit/states.dart';
import 'package:balanced_meal/custom_widgets/back_button.dart';
import 'package:balanced_meal/json/jsons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateOrderScreen extends StatelessWidget {
  const CreateOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return  Scaffold(
          appBar: AppBar(
            leading: CustomBackButton(con: context),
            centerTitle: true,
            title: Text(
              'Create your order',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 2,),
                  child: ListView(
                    children: [
                      Text(
                        'Vegetables',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 12),
                      Category(list: vegetableJson),
                      const SizedBox(height: 16),
                      Text(
                        'Meats',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 12),
                      Category(list: meatJson),
                      const SizedBox(height: 16),
                      Text(
                        'Carbs',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(height: 12),
                      Category(list: carbJson),
                    ],
                  ),
                ),
              ),
              const CarbsAndPrice(buttonText: 'Place order'),
            ],
          ),
        );
      },
    );
  }
}
