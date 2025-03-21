import 'package:checkout_payment/core/widgets/custom_app_bar.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/custom_check_icon.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/custom_dashed_line.dart';
import 'package:checkout_payment/feature/checkout/presentaion/views/widgets/thank_you_card.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(),
      body: Padding(
          padding: const EdgeInsets.all(25),
          child: Stack(
            clipBehavior: Clip.none,
            children: [ 
             const ThankYouCard(),
      
            Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2+20,
              left: 30,
              right:30,
              child: const CustomDasheLine(),
            ),
      
      
      
            Positioned(
        
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -20,
        
              child: CircleAvatar(
              backgroundColor: Colors.white,
            ),),
            Positioned(
        
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -20,
        
              child: CircleAvatar(
              backgroundColor: Colors.white,
            ),),
            Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CustomCheckIcon(),
            ),
        
        
             ],),
        
      ),
    );
  }
}

