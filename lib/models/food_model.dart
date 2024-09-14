class FoodModel {
  String image1;
  String name1;

  FoodModel({
    required this.image1,
    required this.name1
  });
}

class FoodModelData {
  static List<FoodModel> fooddata = [
    FoodModel(image1: "assets/pizza1.png", name1: "Very delicious \n favourable food"),
    FoodModel(image1: "assets/image4.png", name1: "What will we\n cook today?"),
    FoodModel(image1: "assets/pizza3.png", name1: "Cheap and affordable\n everywhere"),
    FoodModel(image1: "assets/food1.png", name1: "Healthly and more \n easy to cook"),
  ];
}