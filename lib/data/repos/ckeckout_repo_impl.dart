import 'package:dartz/dartz.dart';
import 'package:smart_cart_payment_project/core/errors/failures.dart';
import 'package:smart_cart_payment_project/core/utils/stripe_service.dart';
import 'package:smart_cart_payment_project/data/models/payment_intent_input_model.dart';
import 'package:smart_cart_payment_project/data/repos/checkout_repo.dart';

class CheckOutRepoImpl extends CheckOutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } on Exception catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
