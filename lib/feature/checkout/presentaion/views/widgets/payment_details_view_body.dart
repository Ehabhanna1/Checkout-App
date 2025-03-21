import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     slivers: [
      SliverToBoxAdapter(
        child: PaymentMethodListView(), 
      ),
      SliverToBoxAdapter(
        child:CustomCreditCard(),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
            child: const CustomButton(),
          )),
      ),
     ],

     
     
     
     
 
    );
  }
}


