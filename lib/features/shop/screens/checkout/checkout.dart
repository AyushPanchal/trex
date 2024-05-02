import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store/common/widgets/success_screen/success_screen.dart';
import 'package:t_store/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:t_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:t_store/navigation_menu.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/products/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          "Order Review",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              CartItems(
                showAddRemoveButton: false,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Coupon text-field
              CouponCode(),
              SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Billing Section
              RoundedContainer(
                padding: EdgeInsets.all(TSizes.md),
                showBorder: true,
                backgroundColor: isDarkMode ? TColors.black : TColors.white,
                child: Column(
                  children: [
                    //pricing
                    BillingAmountSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //divider
                    const Divider(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //payment methods
                    const BillingPaymentSection(),
                    SizedBox(height: TSizes.spaceBtwItems),

                    //address
                    BillingAddressSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: "Payment Success!",
              subTitle: "Your Item Will Be Shipped Soon!",
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ),
          ),
          child: const Text("Checkout \$256.0"),
        ),
      ),
    );
  }
}
