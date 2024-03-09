
class Ingredients{
  String nom;//nom de l'ingredient
  double quantite;//la quantité d'ingédient ex 1/2 cuilleres
  String unit;//unité de l'ingredient
  int cal_unit;//calories par unités de mesure
  Ingredients(this.nom,this.quantite,this.unit,this.cal_unit);
}

class Plats{
  //création de la classe générales de tout les plats et recettes
  String nom; //nom du plat /de la recette
  int duree; //Durée de la préparation / temps pour réchauffer décongeller
  List<String> allergenes;//liste d'allergenes du plat
    // Constructor
  Plats(this.nom, this.duree,this.allergenes);
}

// Subclass
class Recette extends Plats {
  String image; // Path/to/image l'image de la recette
  List<Ingredients> ingredients;//ingédients de la recette
  Recette(super.nom, super.duree,super.allergenes,this.image,this.ingredients); 
  
}
