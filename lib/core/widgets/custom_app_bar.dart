
  import 'package:checkout_payment/core/utils/app_styles.dart';
import 'package:flutter/material.dart' ;
import 'package:flutter_svg/svg.dart';

AppBar buildAppBar({ final String? title}) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(title ?? '',
   
      style: AppStyles.style25),
      centerTitle: true,
      elevation: 0,
      leading: Center(child: SvgPicture.asset("assets/images/arrow.svg",height: 20,)),
      
    );
  }
