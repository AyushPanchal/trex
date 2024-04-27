import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/shop/screens/home/home.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
            destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
              NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: "Wishlist"),
              NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
            ],
            backgroundColor: isDarkMode ? TColors.black : Colors.white,
            indicatorColor: isDarkMode
                ? TColors.white.withOpacity(0.1)
                : TColors.black.withOpacity(0.1)),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    HomeScreen(),
    Container(
      color: Colors.red,
    ),
    Container(
      color: Colors.pink,
    ),
    Container(
      color: Colors.purple,
    ),
  ];
}
