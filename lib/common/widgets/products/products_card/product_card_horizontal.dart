import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/icons/circular_icon.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Container(
      width: 309,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: isDarkMode ? TColors.darkerGrey : TColors.softGrey,
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
      ),
      child: Column(
        children: [
          Row(
            children: [
              //thumbnails
              RoundedContainer(
                height: 120,
                margin: const EdgeInsets.all(3),
                padding: const EdgeInsets.all(TSizes.sm),
                backgroundColor: isDarkMode ? TColors.dark : TColors.light,
                child: Stack(
                  children: [
                    const SizedBox(
                      height: 120,
                      width: 120,
                      child: RoundedImage(
                        imageUrl: TImages.productImage1,
                        applyImageRadius: true,
                      ),
                    ),
                    Positioned(
                      top: 12,
                      child: RoundedContainer(
                        radius: TSizes.sm,
                        padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.sm,
                          vertical: TSizes.xs,
                        ),
                        backgroundColor: TColors.secondary.withOpacity(0.8),
                        child: Text(
                          "25%",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: CircularIcon(
                        icon: Iconsax.heart5,
                        color: Colors.red,
                      ),
                    )
                  ],
                ),
              ),

              //details
              SizedBox(
                width: 165,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: TSizes.sm,
                    left: TSizes.sm,
                    right: TSizes.sm,
                  ),
                  child: Column(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProductTitleText(
                            title: "Green Nike Sport Classic Shoes",
                            smallSize: true,
                          ),
                          SizedBox(
                            height: TSizes.spaceBtwItems / 2,
                          ),
                          BrandTitleTextWithVerifiedIcon(title: "Nike")
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Flexible(child: ProductPriceText(price: "256.0")),

                          //
                          SizedBox(
                            height: TSizes.iconLg * 1.2,
                            width: TSizes.iconLg * 1.2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: TColors.dark,
                                  borderRadius: BorderRadius.circular(100)),
                              child: const Center(
                                child: Icon(
                                  Iconsax.add,
                                  color: TColors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
