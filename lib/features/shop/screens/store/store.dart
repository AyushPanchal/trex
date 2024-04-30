import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/appbar/tabbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store/common/widgets/layouts/grid_layout.dart';
import 'package:t_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:t_store/common/widgets/brands/brand_card.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/home/widgets/category_tab.dart';
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
              backgroundColor: isDarkMode ? TColors.black : TColors.white,
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
                          return const BrandCard();
                        })
                  ],
                ),
              ),
              bottom: const TTabBar(
                tabs: [
                  Tab(text: "Sports"),
                  Tab(text: "Furniture"),
                  Tab(text: "Electronics"),
                  Tab(text: "Clothes"),
                  Tab(text: "Cosmetics"),
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
