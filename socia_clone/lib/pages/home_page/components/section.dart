import 'package:flutter/material.dart';
import 'package:socia_clone/core/app_typography.dart';

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.titleSection,
    required this.subtitleSection,
    required this.onTap,
    required this.showAll,
  }) : super(key: key);

  final String titleSection;
  final String subtitleSection;
  final Function() onTap;
  final String showAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleSection,
                style: AppTypography.bodyTextBold(context)!.copyWith(
                  fontSize: 14
                ),
              ),
              Text(
                subtitleSection,
                style: AppTypography.subtitleSection(context),
              ),
            ],
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              showAll,
              style: AppTypography.showAll(context),
            ),
          )
        ],
      ),
    );
  }
}
