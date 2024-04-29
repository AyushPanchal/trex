import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/enums.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/colors.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [CartCounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              expandedHeight: 440,
              backgroundColor: isDarkMode ? Colors.black : Colors.white,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //Search Bar
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    const SearchContainer(
                      text: "Search in Store",
                      showBorder: true,
                      showBackground: false,
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections,
                    ),

                    //Featured Brands
                    const SectionHeading(
                      title: "Featured Brands",
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems / 2,
                    ),

                    GridLayout(
                        mainAxisExtent: 80,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return RoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                Flexible(
                                  child: CircularImage(
                                    imageUrl: TImages.clothIcon,
                                    isNetworkImage: false,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: isDarkMode
                                        ? TColors.white
                                        : TColors.dark,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const BrandTitleTextWithVerifiedIcon(
                                        title: "Nike",
                                        brandTextSize: TextSizes.large,
                                        iconColor: TColors.primary,
                                      ),
                                      Text(
                                        "256 Products",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
              bottom: const TTabBar(tabs: [
                Tab(text: "Sports"),
                Tab(text: "Furniture"),
                Tab(text: "Electronics"),
                Tab(text: "Clothes"),
                Tab(text: "Cosmetics"),
              ]),
            ),
          ],
          body: Container(),
        ),
      ),
    );
  }
}
