// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemModel {
  String name;
  String image;
  String category;
  String currentPrice;
  String currencyValue;
  bool isPromotion;
  String? previousPrice;
  ItemModel({
    required this.name,
    required this.image,
    required this.category,
    required this.currentPrice,
    required this.currencyValue,
    required this.isPromotion,
    this.previousPrice,
  });
}
