import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_text_with_verified_icon.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({
    super.key,
    this.onPressed,
    this.showBorder = true,
  });
  final VoidCallback? onPressed;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: RoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: CircularImage(
                imageUrl: TImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: isDarkMode ? TColors.white : TColors.dark,
                borderRadius: 100,
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            //Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                    title: "Nike",
                    brandTextSize: TextSizes.large,
                    iconColor: TColors.primary,
                  ),
                  Text(
                    "256 Products",
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
