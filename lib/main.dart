import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:smart_cart_payment_project/constants.dart';
import 'package:smart_cart_payment_project/core/utils/api_keys.dart';
import 'package:smart_cart_payment_project/view/screens/my_card_view.dart';

void main() {
  Stripe.publishableKey =ApiKeys.publishableKey;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
      ),
      home: const MyCartView(),
    );
  }
}
