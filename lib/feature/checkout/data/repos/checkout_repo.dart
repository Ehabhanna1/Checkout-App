import 'package:checkout_payment/core/errors/faliures.dart';
import 'package:checkout_payment/feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {

  Future<Either<Faliure,void>> makePayment(
    {
      required PaymentIntentInputModel paymentIntentInputModel
      
      });



}


