import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PaymentItemsInfo extends StatelessWidget {
  const PaymentItemsInfo({super.key, required this.title, required this.value});

  final String title, value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: AppStyles.style18),
        Spacer(),
        Text(value, style: AppStyles.style18),
      ],
    );
  }
}
