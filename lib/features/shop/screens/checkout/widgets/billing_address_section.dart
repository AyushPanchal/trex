import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: "Shipping Method",
          buttonTitle: "Change",
          onPressed: () {},
        ),
        Text(
          "Ayush Panchal",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text("+91 9327453256"),
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Expanded(
              child: Text("C / 503 Antrix Residency, Singarva"),
            ),
          ],
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
      ],
    );
  }
}
