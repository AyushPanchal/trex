import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.defaultSpace),
      child: Column(
        children: [
          //Brand with product count
          const BrandCard(
            showBorder: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),

          //brand with top 3 images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, isDarkMode))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, bool isDarkMode) {
    return Expanded(
      child: RoundedContainer(
        margin: const EdgeInsets.only(
          right: TSizes.sm,
        ),
        height: 100,
        backgroundColor: isDarkMode ? TColors.darkerGrey : TColors.light,
        padding: const EdgeInsets.all(TSizes.md),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
