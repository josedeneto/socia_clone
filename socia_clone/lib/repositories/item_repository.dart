import 'package:socia_clone/models/items_model.dart';

class ItemRepository {
  List<ItemModel> itemData = [];
  List<ItemModel> itemDataRecents = [];
  List<ItemModel> itemDataPromotion = [];

  ItemRepository() {
    //todos os produtos
    itemData.addAll([
      ItemModel(
          name: 'Galinha',
          currentPrice: '616,00',
          category: 'Alimentos',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/all_products/galinha.jpg'),
      ItemModel(
          name: 'Leite Nido 400g',
          category: 'Lácteos',
          currentPrice: '1773,4',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/all_products/leite.jpg'),
      ItemModel(
          name: 'Lixívia Madar',
          category: 'Pacotes',
          currentPrice: '341,25',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/all_products/lixivia.jpg'),
      ItemModel(
          name: 'Arroz Patriota 1kg',
          category: 'Alimentos',
          currentPrice: '181,44',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/all_products/arroz_patriota.jpg'),
      ItemModel(
          name: 'Linguiça 150g',
          category: 'Alimentos',
          currentPrice: '636,94',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/all_products/linguica.jpg'),
    ]);
  //produtos recentes
    itemDataRecents.addAll([
      ItemModel(
          name: 'Arroz Imperio 25kg',
          category: 'Alimentos',
          currentPrice: '317,79',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/arroz.jpg'),
      ItemModel(
          name: 'Biba Margarina 250g',
          category: 'Pacotes',
          currentPrice: '397,95',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/margarina.jpg'),
      ItemModel(
          name: 'Fermento',
          category: 'Pacotes',
          currentPrice: '181,44',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/fermento.jpg'),
      ItemModel(
          name: 'Chá Bom dia 20un',
          category: 'Chá, Café',
          currentPrice: '425,25',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/chá.jpg'),
      ItemModel(
          name: 'Atum Blue Diamond',
          category: 'Alimentos',
          currentPrice: '1128,75',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/atum_blue_diamond.jpg'),
      ItemModel(
          name: 'Shampoo Pet 375ml',
          category: 'Detergentes',
          currentPrice: '181,44',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/shampoo_pet.jpg'),
      ItemModel(
          name: 'Molho de soja',
          category: 'Molhos',
          currentPrice: 'Molho de soja',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/molho de soja.jpg'),
      ItemModel(
          name: 'Bolacha Água e sal 14g',
          category: 'Doces',
          currentPrice: '162,51',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/bolacha_agua_e_sal.jpg'),
      ItemModel(
          name: 'Gel banho Dove',
          category: 'Cosméticos',
          currentPrice: '2.421,4',
          currencyValue: 'AOA',
          isPromotion: false,
          image: 'assets/images/recents_products/gel_banho.jpg')
    ]);

//prdoutos promocionais
    itemDataPromotion.addAll([
      ItemModel(
        name: 'Speed lata 330 ML',
        currentPrice: '391,22',
        category: 'Bebidas',
        currencyValue: 'AOA',
        isPromotion: true,
        previousPrice: '616,00',
        image: 'assets/images/promotion/speed.jpg',
      ),
      ItemModel(
          name: 'Coca-cola',
          category: 'Bebidas',
          currentPrice: '270,89',
          currencyValue: 'AOA',
          isPromotion: true,
          image: 'assets/images/promotion/coca.jpg',
          previousPrice: '300,94'),
      ItemModel(
          name: 'Iogurte Mimosa Banana',
          category: 'Pacotes',
          currentPrice: '120,44',
          currencyValue: 'AOA',
          isPromotion: true,
          image: 'assets/images/promotion/iogurte.jpg',
          previousPrice: '180.50'),
      ItemModel(
        name: 'Sumo Nutry',
        category: 'Pacotes',
        currentPrice: '80,50',
        currencyValue: 'AOA',
        isPromotion: false,
        image: 'assets/images/promotion/nutry.jpg',
        previousPrice: '90,50',
      ),
    ]);
  }
}
