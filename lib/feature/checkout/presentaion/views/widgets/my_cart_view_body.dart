import 'package:checkout_payment/core/utils/widgets/custom_button.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/order_info_items.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/total_price.dart';
import 'package:flutter/material.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height:25,),
          Image.asset("assets/images/basket_image.png"),
         const  SizedBox(height:30,),
          OrderInfoItem(title: 'Order Subtotal', value: r'$42.97',),
         const SizedBox(height:5,),
          OrderInfoItem(title: 'Discount', value: r'$0',),
         const SizedBox(height:5,),
          OrderInfoItem(title: 'Shipping', value: r'$8',),
         const Divider(thickness: 2,height: 60,),
          TotalPrice(title: 'Total', value: r'$50.97',),
          const SizedBox(height:30,),
        
         const CustomButton(),
         const SizedBox(height:20),




        ],
      ),
    );
  }
}






