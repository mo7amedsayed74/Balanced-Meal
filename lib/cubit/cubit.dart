import 'package:balanced_meal/cubit/states.dart';
import 'package:balanced_meal/model/order_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialAppState());

  static AppCubit get(context) => BlocProvider.of(context);

  /// Details Screen
  String? gender;

  void onChangeDropdownButtonFormField(value) {
    gender = value;
    emit(OnChangeDropdownButtonFormFieldState());
  }

  double userCalories = 0;
  double orderCalories = 0;

  void calculateCalories({
    required double weight,
    required double height,
    required double age,
  }) {
    userCalories = (gender == 'Male')
        ? ((666.47) + (13.75 * weight) + (5 * height) - (6.75 * age))
        : ((655.1) + (9.56 * weight) + (1.85 * height) - (4.67 * age));
  }

  int price = 0;

  Map<int, OrderModel> orders = {};

  void addOnPressed({required Map<String, dynamic> item}) {
    price += 12;
    orderCalories += item['calories'];
    orders.addAll({
      item['itemId']: OrderModel.fill(item: item),
    });

    emit(AddOnPressedState());
  }

  void plusOnPressed({required OrderModel item}) {
    orders[item.itemId]!.numberOfPiece++;
    price += 12;
    orderCalories += item.calories;
    emit(PlusOnPressedState());
  }

  void minusOnPressed({required OrderModel item}) {
    orders[item.itemId]!.numberOfPiece--;
    orderCalories -= item.calories;
    if (orders[item.itemId]!.numberOfPiece == 0) {
      orders.remove(item.itemId);
    }
    price -= 12;
    emit(MinusOnPressedState());
  }


  List<int> keysOfOrders = [];
}
