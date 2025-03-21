import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_method_items.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodListView(),
       

      ],
    );
  }
}



