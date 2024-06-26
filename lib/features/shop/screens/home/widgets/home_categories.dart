import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/features/shop/screens/sub_category/sub_categories.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (_, index) {
          return VerticalImageAndText(
            image: TImages.shoeIcon,
            text: "Shoes",
            onPressed: () => Get.to(() => const SubCategoriesScreen()),
          );
        },
      ),
    );
  }
}
