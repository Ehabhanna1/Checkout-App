import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_method_items.dart';
import 'package:flutter/material.dart';

class PaymentMethodListView extends StatefulWidget {
  const PaymentMethodListView({super.key});

  @override
  State<PaymentMethodListView> createState() => _PaymentMethodListViewState();
}

class _PaymentMethodListViewState extends State<PaymentMethodListView> {
  final List<String> paymentMethods = const[
    'assets/images/card.svg',
    'assets/images/paypal.svg',
   
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        itemCount: paymentMethods.length,
        scrollDirection: Axis.horizontal,
        
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItems(
                image: paymentMethods[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },),
    );
  }
}