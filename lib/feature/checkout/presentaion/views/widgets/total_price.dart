import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.style25),
        Spacer(),
        Text(value, style: AppStyles.style25),
      ],
    );
  }
}
