import 'package:checkout_payment/core/errors/faliures.dart';
import 'package:checkout_payment/core/utils/stripe_service.dart';
import 'package:checkout_payment/feature/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment/feature/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImplement extends CheckoutRepo {

  final StripeService stripeService = StripeService();
  @override
  Future<Either<Faliure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel}) async {
   try {
  await  stripeService.makePayment(paymentIntentInputModel: paymentIntentInputModel);

  return const Right(null);
} catch (e) {

  return Left(ServerFaliure( errorMessage: e.toString()));
  
}
  }
}