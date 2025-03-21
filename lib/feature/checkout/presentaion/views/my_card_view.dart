import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCardView extends StatelessWidget {
  const MyCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('My Card',
     
        style: AppStyles.style25),
        centerTitle: true,
        elevation: 0,
        leading: Center(child: SvgPicture.asset("assets/images/arrow.svg",height: 20,)),
        
      ),
      body: Column(
        children: [
          

        ],
      ),

    );
  }
}