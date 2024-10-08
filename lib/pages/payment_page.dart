import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:littlecafe/widgets/my_button.dart';

import 'delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  // user wants to pay

  void userTappedPay() {
    if (formKey.currentState!.validate()) {
      // only show dialog if form is valid
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Confirm Payment'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number : $cardNumber"),
                Text("Expiry Date : $expiryDate"),
                Text("Card Holder Name : $cardHolderName"),
                Text("CVV : $cvvCode"),
              ],
            ),
          ),
          actions: [
            // cancel button

            TextButton(
                onPressed: () => Navigator.pop(context),
                  child: Text('Cancel')
                ),

            //yes button

            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the current dialog first
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DeliveryProgressPage()),
                );
              },
              child: Text('Yes'),
            )




          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Column(
        children: [
          //credit card

          CreditCardWidget(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: isCvvFocused,
            onCreditCardWidgetChange: (p0) {},
          ),

          //credit card form
          CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber= data.cardNumber;
                expiryDate=data.expiryDate;
                cardHolderName= data.cardHolderName;
                cvvCode= data.cvvCode;
              });
            },
            formKey: formKey,
          ),

          Spacer(),
          MyButton(
            onTap: userTappedPay,
            text: "Pay Now",
          ),

          SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
