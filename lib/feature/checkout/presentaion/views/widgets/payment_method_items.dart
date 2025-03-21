import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItems extends StatelessWidget {
  const PaymentMethodItems({
    super.key,
    this.isActive = false,
    required this.image,
  });

  final bool isActive;

  final String image;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      height: 65,
      width: 115,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.8,
            color: isActive ? Color(0xFF34A853) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xFF34A853) : Colors.white,
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(child: SvgPicture.asset(image)),
      ),
    );
  }
}
