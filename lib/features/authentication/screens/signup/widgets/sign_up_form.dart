import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/signup/verify_email.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/terms_and_conditions_checkbox.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.isDarkMode,
  });

  final bool isDarkMode;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //Last name and First name text form fields
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                  expands: false,
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(
                      Iconsax.user,
                    ),
                  ),
                  expands: false,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(
                Iconsax.user_edit,
              ),
            ),
            expands: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
            ),
            expands: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Phone number
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(
                Iconsax.call,
              ),
            ),
            expands: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputFields,
          ),

          //Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(
                Iconsax.password_check,
              ),
              suffixIcon: Icon(
                Iconsax.eye_slash,
              ),
            ),
            expands: false,
          ),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          //Terms and conditions checkbox
          TermsAndConditionsCheckBox(isDarkMode: isDarkMode),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(
                () => const VerifyEmailScreen(),
              ),
              child: const Text(
                TTexts.createAccount,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
