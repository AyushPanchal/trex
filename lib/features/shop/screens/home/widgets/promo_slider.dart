import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store/features/shop/controllers/home_controller.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.isDarkMode,
    required this.banners,
  });

  final bool isDarkMode;
  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners
              .map(
                (imageUrl) => RoundedImage(
                  imageUrl: imageUrl,
                ),
              )
              .toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CircularContainer(
                  margin: const EdgeInsets.only(right: 10),
                  height: 4,
                  width: 20,
                  backgroundColor: controller.carousalCurrentIndex.value == i
                      ? isDarkMode
                          ? TColors.light
                          : TColors.primary
                      : TColors.darkerGrey,
                ),
            ],
          ),
        )
      ],
    );
  }
}
