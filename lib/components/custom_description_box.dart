import 'package:flutter/material.dart';

class CustomDescriptionBox extends StatelessWidget {
  const CustomDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    // textstyle
    var customPrimaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.inversePrimary,
    );
    var customSecondaryTextStyle = TextStyle(
      color: Theme.of(context).colorScheme.primary,
    );

    return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "\$0.99",
                  style: customPrimaryTextStyle,
                ),
                Text(
                  "Delivery fee",
                  style: customSecondaryTextStyle,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "15-30 min",
                  style: customPrimaryTextStyle,
                ),
                Text(
                  "Delivery time",
                  style: customSecondaryTextStyle,
                ),
              ],
            )
          ],
        ));
  }
}
