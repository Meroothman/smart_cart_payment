import 'package:smart_cart_payment_project/core/errors/failures.dart';
import 'package:smart_cart_payment_project/data/models/payment_intent_input_model.dart';
import 'package:dartz/dartz.dart';


abstract class CheckOutRepo {
  Future<Either<Failure, void>> makePayment(
      {required  PaymentIntentInputModel paymentIntentInputModel});
}


