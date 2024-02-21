class OrderModel {
  late final String imageUrl;
  late final String foodName;
  late final int calories;
  late final int itemId;
  int numberOfPiece = 1;

  // named constructor
  OrderModel.fill({required Map<String, dynamic> item}) {
    imageUrl = item['imageUrl'];
    foodName = item['foodName'];
    calories = item['calories'];
    itemId = item['itemId'];
  }
}
