
import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.only(
        top: 20,
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.shopping_cart_outlined,
                size: 25,
              ),
              SizedBox(
                width: 3,
              ),
              Icon(
                Icons.notifications_none_rounded,
                size: 25,
              )
            ],
          ),
          Positioned(
            bottom: 40,
            right: 2,
            child: Container(
              padding: const EdgeInsets.all(2),
              alignment: Alignment.center,
              width: 9,
              height: 9,
              decoration: const BoxDecoration(
                color: AppColors.red,
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
