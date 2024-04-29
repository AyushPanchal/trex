import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                //Brands
                const BrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1,
                  ],
                ),
                const BrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1,
                  ],
                ),
                //Products You may like
                SectionHeading(
                  title: "You Might Like",
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),
                GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical(),
                )
              ],
            ),
          ),
        ]);
  }
}
