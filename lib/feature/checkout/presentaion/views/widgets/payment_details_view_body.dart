import 'dart:math';

import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/custom_credit_card.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;



  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
     slivers: [
      SliverToBoxAdapter(
        child: PaymentMethodListView(), 
      ),
      SliverToBoxAdapter(
        child:CustomCreditCard(
          autovalidateMode: autovalidateMode,
          formKey: formKey,),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40, left: 20, right: 20),
            child: CustomButton( text: 'Pay Now',
            onTap: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
                
              }
            },
            
            ),
          )),
      ),
     ],

     
     
     
     
 
    );
  }
}


