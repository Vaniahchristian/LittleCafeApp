



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String paymentMethodName;
  final String assetImagePath;

  PaymentMethodWidget({
    required this.paymentMethodName,
    required this.assetImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: <Widget>[
              Image.asset(
                assetImagePath,
                width: 50,
                height: 50,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Text(
                  paymentMethodName,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF3a3a3b),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class UgandanPaymentMethods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        PaymentMethodWidget(
          paymentMethodName: "MTN Mobile Money",
          assetImagePath: "assets/images/menus/ic_credit_card.png",
        ),
        PaymentMethodWidget(
          paymentMethodName: "Airtel Money",
          assetImagePath: "assets/images/menus/ic_credit_card.png",
        ),
        PaymentMethodWidget(
          paymentMethodName: "Bank Transfer",
          assetImagePath: "assets/images/menus/ic_credit_card.png",
        ),
        PaymentMethodWidget(
          paymentMethodName: "Credit/Debit Card",
          assetImagePath: "assets/images/menus/ic_credit_card.png",
        ),
        // Add more payment methods if necessary
      ],
    );
  }}