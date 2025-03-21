import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/card_info_widget.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/payment_item_info.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/total_price.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
    decoration: ShapeDecoration(
      color: Color(0xFFD9D9D9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70,left: 22,right: 22),
        child: Column(
          children: [
            Text("Thank You",style: AppStyles.style25,),
            const SizedBox(height: 10,),
            Text("Your payment was successful",style: AppStyles.style20,),
            const SizedBox(height:50,),

            PaymentItemsInfo(title: 'Date', value: '21/3/2025',),
            const SizedBox(height:15,),

            PaymentItemsInfo(title: 'Time', value: '4:23 AM',),
            const SizedBox(height:15,),

            PaymentItemsInfo(title: 'To', value: 'Ehab Hanna',),
            const Divider(thickness: 2, height: 80,),
            TotalPrice(title: "Total", value: r"$50.97"),
          const  SizedBox(height:40,),

          const  CardInfoWidget(),
          const Spacer(),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.barcode,size:60,),

              Container(
                width: 115,
                height: 60,
                decoration: ShapeDecoration(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide(width: 1.7,  color: Color(0xFF34A853), ),

                  ),
                ),

                child: Center(
                  child: Text("PAID",
                  textAlign: TextAlign.center ,
                  style: AppStyles.style25.copyWith(color: Color(0xFF34A853),),),
                ),
                
                
                 ),
            ],
          ),


           SizedBox(height:((MediaQuery.sizeOf(context).height * 0.2 +20) / 2)-30) ,


            
          ],
        ),
      ),
              );
  }
}



