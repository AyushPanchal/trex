import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text("Profile"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              const SizedBox(
                width: double.infinity,
                child: CircularImage(
                  imageUrl: TImages.user,
                  height: 80,
                  width: 80,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Change Profile Picture")),
              const SizedBox(
                height: TSizes.spaceBtwItems / 2,
              ),

              //Profile Information
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: "Profile Information",
                showActionButton: false,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ProfileMenu(
                title: "Name",
                value: "Ayush Panchal",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Username",
                value: "ayushpanchal",
                onPressed: () {},
              ),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Personal Information
              const SectionHeading(
                title: "Personal Information",
                showActionButton: false,
              ),
              ProfileMenu(
                title: "User id",
                value: "45325",
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Email",
                value: "ayushpanchal@gmail.com",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Phone Number",
                value: "+91 9327453256",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Gender",
                value: "male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: "Date of Birth",
                value: "18 Nov, 2002",
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              //Close account
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Close Account",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
