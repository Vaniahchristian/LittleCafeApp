import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/cartIcon.dart';
import '../widgets/cartItem.dart';
import '../widgets/paymentMethod.dart';
import '../widgets/promoCode.dart';
import '../widgets/totalCalculation.dart';

class FoodOrderPage extends StatefulWidget {
  @override
  _FoodOrderPageState createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  int counter = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0a2351),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Center(
          child: Text(
            "Item Carts",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: <Widget>[
          CartIconWithBadge(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Your Food Cart",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              CartItem(
                productName: "Grilled Salmon",
                productPrice: "\UGX96.00",
                productImage: "ic_popular_food_1",
                productCartQuantity: "2",
              ),
              SizedBox(height: 10),
              CartItem(
                productName: "Meat vegetable",
                productPrice: "\UGX65.08",
                productImage: "ic_popular_food_4",
                productCartQuantity: "5",
              ),
              SizedBox(height: 10),
              PromoCodeWidget(),
              SizedBox(height: 10),
              TotalCalculationWidget(),
              SizedBox(height: 10),
              Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 10),
              UgandanPaymentMethods(),
            ],
          ),
        ),
      ),
    );
  }
}
