import 'package:checkout_payment/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: buildAppBar(title: 'My Cart'),
      body: MyCartViewBody()

    );
  }
}