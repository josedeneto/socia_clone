import 'package:flutter/material.dart';

import '../../../core/app_colors.dart';
import '../../../core/app_typography.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Endereço de entrega',
            style: AppTypography.locationAdressText(context),
          ),
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    color: AppColors.primaryColor,
                    size: 20,
                  ),
                  Text(
                    'Morro bento, gamek',
                    style: AppTypography.myLocationText(context),
                  ),
                ],
              ),
              const SizedBox(width: 2),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
