import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../utils/helpers/helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and sale price
        Row(
          children: [
            //sale tag
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: TColors.black,
                    ),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),

            //price
            Text(
              "\$250",
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            const ProductPriceText(
              price: "175",
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        //title
        const ProductTitleText(title: "Green Nike Sports Shoes"),
        const SizedBox(
          height: TSizes.spaceBtwItems / 1.5,
        ),

        //stock status
        Row(
          children: [
            const ProductTitleText(title: "Status"),
            const SizedBox(
              width: TSizes.spaceBtwItems / 1.5,
            ),
            Text(
              "In Stock",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),

        //brand
        Row(
          children: [
            CircularImage(
              imageUrl: TImages.nikeLogo,
              height: 32,
              width: 32,
              overlayColor: isDarkMode ? TColors.white : TColors.black,
            ),
            const BrandTitleTextWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
