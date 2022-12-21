import 'package:socia_clone/models/categorias_model.dart';

class CategoryRepository{
  List<CategoryModel> categories = [];

   CategoryRepository(){
    categories.addAll([
      CategoryModel(name: 'Todos',isSelected: true),
      CategoryModel(name: 'Alimentos',isSelected:false),
      CategoryModel(name: 'Vegetais',isSelected:false),
      CategoryModel(name: 'Bebidas',isSelected:false),
      CategoryModel(name: 'Detergentes',isSelected:false),
       CategoryModel(name: 'Cosméticos',isSelected:false),
      CategoryModel(name: 'Natal',isSelected:false),
      CategoryModel(name: 'Frutas,Legumes,Tuberculos',isSelected:false),
      CategoryModel(name: 'Chá e Café',isSelected:false),
    ]);
   }
}