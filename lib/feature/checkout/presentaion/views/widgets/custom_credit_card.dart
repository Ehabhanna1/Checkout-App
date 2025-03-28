import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });

  final GlobalKey<FormState> formKey;
  final AutovalidateMode autovalidateMode;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          isHolderNameVisible: true,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          showBackView: showBackView,
          cvvCode: '',
          onCreditCardWidgetChange: (CreditCardBrand) {},
        ),

        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (CreditCardModel model) {
            cardNumber = model.cardNumber;
            expiryDate = model.expiryDate;
            cardHolderName = model.cardHolderName;
            cvvCode = model.cvvCode;
            showBackView = model.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
