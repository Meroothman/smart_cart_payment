import 'package:flutter/material.dart';
import 'package:smart_cart_payment_project/view/widgets/paymentwidgets/cutom_app_bar.dart';
import 'package:smart_cart_payment_project/view/widgets/paymentwidgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: const PaymentDetailsViewBody(),
    );
  }
}
