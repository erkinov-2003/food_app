import 'package:foodapp/src/constants/imagePath.dart';

class Food{
  final String name;
  final String path;

  const Food({required this.name, required this.path});
}


List<Food> foods=[
  const Food(name: "Burger", path: ImagePath.searchburger),
  const Food(name: "Meat", path: ImagePath.searchmeat),
  const Food(name: "Pchiney", path: ImagePath.searchpicheniye),
  const Food(name: "Pizza", path: ImagePath.searchpizza),
  const Food(name: "Salat", path: ImagePath.searchsalat),
  const Food(name: "sweet", path: ImagePath.searchshirinlik),
  const Food(name: "Xot Dog", path: ImagePath.searchxotdog),
];