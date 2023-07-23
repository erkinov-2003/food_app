import 'package:foodapp/src/constants/imagePath.dart';

class Food{
  final String name;
  final String path;

  const Food({required this.name, required this.path});
}


List<Food> foods=[
  Food(name: "Burger", path: ImagePath.searchburger),
  Food(name: "Meat", path: ImagePath.searchmeat),
  Food(name: "Pchiney", path: ImagePath.searchpicheniye),
  Food(name: "Pizza", path: ImagePath.searchpizza),
  Food(name: "Salat", path: ImagePath.searchsalat),
  Food(name: "sweet", path: ImagePath.searchshirinlik),
  Food(name: "Xot Dog", path: ImagePath.searchxotdog),
];