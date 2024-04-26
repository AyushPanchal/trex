import 'package:flutter/material.dart';
import 'package:t_store/common/styles/spacing_styles.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:t_store/features/authentication/screens/login/widgets/login_image_and_title.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/divider_with_text.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Header
              LoginImageAndTitle(isDarkMode: isDarkMode),

              //Form
              const LoginForm(),

              //Divider
              DividerWithText(
                isDarkMode: isDarkMode,
                text: TTexts.orSignInWith,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Footer (Google and FB Login)
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
