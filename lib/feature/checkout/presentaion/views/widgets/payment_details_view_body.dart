import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_method_items.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_methods_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentMethodListView(),
        CustomCreditCard(),
       

      ],
    );
  }
}


class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate ='' , cardHolderName = '' , cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
         expiryDate: expiryDate, 
         cardHolderName: cardHolderName, 
         showBackView: showBackView, 
         cvvCode: '',
          onCreditCardWidgetChange: (CreditCardBrand ) {  },),
      ],
    );
  }
}



