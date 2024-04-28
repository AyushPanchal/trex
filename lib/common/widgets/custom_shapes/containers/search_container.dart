import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon,
    this.showBackground = true,
    this.showBorder = true,
    this.onPressed,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          color: showBackground
              ? isDarkMode
                  ? TColors.black
                  : TColors.white
              : Colors.transparent,
          border: showBorder ? Border.all(color: TColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: TColors.darkerGrey,
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .apply(color: TColors.darkGrey),
            ),
          ],
        ),
      ),
    );
  }
}
