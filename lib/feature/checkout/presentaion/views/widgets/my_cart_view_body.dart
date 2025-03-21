import 'package:checkout_payment/core/widgets/custom_button.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/payment_details_view.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/order_info_items.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_methods_list_view.dart';
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
          SizedBox(height:15),
          Expanded(child: Image.asset("assets/images/basket_image.png")),
         const  SizedBox(height:15,),
          OrderInfoItem(title: 'Order Subtotal', value: r'$42.97',),
         const SizedBox(height:5,),
          OrderInfoItem(title: 'Discount', value: r'$0',),
         const SizedBox(height:5,),
          OrderInfoItem(title: 'Shipping', value: r'$8',),
         const Divider(thickness: 2,height: 50,),
          TotalPrice(title: 'Total', value: r'$50.97',),
          const SizedBox(height:20,),
        
          CustomButton(
          text: 'Complete Payment',
          onTap: () {
           // Navigator.of(context).push(MaterialPageRoute(builder: (context) => PaymentDetailsView()));

           showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),),
             builder: (context){
            return PaymentMethodsButtonSheet();

           });
          },
         ),
         const SizedBox(height:35),




        ],
      ),
    );
  }
}


class PaymentMethodsButtonSheet extends StatelessWidget {
  const PaymentMethodsButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15,),
          PaymentMethodListView(),
          const SizedBox(height: 30,),
      
          CustomButton(text: "Continue",onTap: (){},),

        ],
      ),
    );
  }
}





