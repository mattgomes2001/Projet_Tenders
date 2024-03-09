// Food class representing a food item
class Food {
  String name;
  double quantity;
  double calories;

  // Constructor for initializing Food instances
  Food({
    required this.name,
    required this.quantity,
    required this.calories,
  });
}

// Dish class, extending Food
class Dish extends Food {
  int duration;

  // Constructor for initializing Dish instances
  Dish({
    required String name,
    required double quantity,
    required double calories,
    required this.duration,
  }) : super(name: name, quantity: quantity, calories: calories);
}

// Foodstuff class, extending Food
class Foodstuff extends Food {
  bool countable;
  String unit;

  // Constructor for initializing Foodstuff instances
  Foodstuff({
    required String name,
    required double quantity,
    required double calories,
    required this.countable,
  })  : unit = countable ? 'u' : 'g',
        super(name: name, quantity: quantity, calories: calories);
}
// Recipe class, extending Dish
class Recipe extends Dish {
  String photopath;
  List<Foodstuff> ingredients;

  // Constructor for initializing Recipe instances
  Recipe({
    required String name,
    required int duration,
    required this.photopath, // Default value for photopath
    required this.ingredients, // Default empty list for ingredients
  }) : super(name: name,quantity:  0, calories: ingredients.fold<double>(0, (sum, foodstuff) => sum + (foodstuff.quantity * foodstuff.calories)), duration: duration);

}

