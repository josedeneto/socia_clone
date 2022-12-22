import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_colors.dart';
import 'package:socia_clone/core/app_typography.dart';
import 'package:socia_clone/models/items_model.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({Key? key, required this.item}) : super(key: key);
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 1,
          shadowColor: Colors.grey.shade300,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //image
                Expanded(
                  child: Stack(
                    children: [
                      Image.asset(
                        item.image,
                      ),
                    ],
                  ),
                ),
                Text(
                  item.category,
                  style: AppTypography.itemCategory(context),
                ),
                Text(
                  item.name,
                  style: AppTypography.itemName(context),
                ),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${item.currentPrice} ${item.currencyValue}',
                      style: AppTypography.priceCategory(context),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      item.isPromotion ? item.previousPrice! : '',
                      style: AppTypography.isPromotion(context),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const Positioned(
            top: 2,
            right: 4,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_outline_rounded),
            )),
        Positioned(
          top: 4,
          left: 4,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 39,
              width: 31,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColors.defaultBlue,
                  AppColors.pinkShade700
                ]),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(10)),
              ),
              child:const Padding(
                padding:  EdgeInsets.only(left: 10),
                child:  Image(color: Colors.white,image: AssetImage('assets/images/logo_socia/4.png'), width:5, height: 5,),
              ) /*Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white.withAlpha(200),
                size: 20,
              ),*/
            ),
          ),
        )
      ],
    );
  }
}
