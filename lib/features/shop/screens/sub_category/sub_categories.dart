import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/rounded_image.dart';
import 'package:t_store/common/widgets/products/products_card/product_card_horizontal.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("Sports"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              RoundedImage(
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
                width: double.infinity,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //sub categories
              Column(
                children: [
                  SectionHeading(
                    title: "Sports Shirts",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.separated(
                      separatorBuilder: (_, __) => SizedBox(
                        width: TSizes.spaceBtwItems,
                      ),
                      itemBuilder: (_, index) => const ProductCardHorizontal(),
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
