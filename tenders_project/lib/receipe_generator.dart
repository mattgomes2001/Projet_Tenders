double calTot(List<Ingredient> listIng) {
  double calTot = 0;
  for (int i = 0; i < listIng.length; i++) {
    calTot += listIng[i].Q * listIng[i].C;
  }
  return calTot;
}
// le code ci-dessus est le code pour calculer les calories d'un aliment

// le code après est un ensemble de différents programme
void Gen_repas_comp() {
  
  liste_repas_comp=[]
    for (int i = 0; i < listPlat.length; i++) { //cette boucle permet de mettre des recettes compatibles (ingrédients,plat) dans la liste de repas compatible
      if (listPlat[i] is! Recipe) {
      liste_repas_comp.add(listPlat[i]);
      } else {
        l1 = listPlat[i].Ingredient
        l2 = listeIngredient
        if (l1.removeWhere((name) => !l2.contains(name)) >= 2 &&
             calTot(listPlat[i].Ingredient) == crepas) 
             {
             liste_repas_comp.add(listPlat[i]);
             }
    }//Après il faut attendre le choix du user
   
  }
  return liste_repas_comp
}
// int n= 0;
//   while (calTot(listeIngredient) >= c_repas || n >= nb_repas) { 
//     // il appelle le calcul de calorie et compare à ceux d'un repas défini par user OU le nombre repas de semaine > demandé
    
//   }
// void Gen_repas_frigo() {
//   Gen_repas();
// }
