import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 23,vertical:15),
      width: double.infinity,
      height: 80,
      decoration: ShapeDecoration(
        color: Color(0xFFFFFFFF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
                   
        children: [
          SvgPicture.asset("assets/images/master_card.svg"),
          const SizedBox(width: 25),
           Text.rich(
                  TextSpan(
      children: [
        const TextSpan(
          text: 'Credit Card ',style: AppStyles.style18
        ),
        TextSpan(
          text: 'Mastercard **78',
          style: TextStyle(
            color: Colors.black.withOpacity(0.699999988079071),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
      ],
                  ),
                )
        ],
      ),
    );
  }
}


