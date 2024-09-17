

import 'package:flutter/material.dart';
import 'package:littlecafe/pages/payment_page.dart';
import 'package:littlecafe/widgets/my_cart_tile.dart';
import 'package:provider/provider.dart';


import '../models/restaurant.dart';
import '../widgets/my_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context,restaurant,child) {
      //cart
      final userCart = restaurant.cart;

      //scaffold UI
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Cart'),
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
       actions: [

         //clear cart button
         IconButton(
             onPressed: (){
               showDialog(
                   context: context,
                   builder: (context) => AlertDialog(
                     title: Text('Are you sure you want to clear the cart'),
                     actions: [
                       //cancel button

                       TextButton(
                           onPressed: () => Navigator.pop(context),
                           child: Text('Cancel')
                       ),

                       //yes button

                       TextButton(
                           onPressed: (){
                             Navigator.pop(context);
                             restaurant.clearCart();

                           },
                           child: Text('Yes')
                       ),




                     ],
                   ),
               );
             },
             icon: Icon(Icons.delete),
         ),





       ],

        ),
        body: Column(
          children: [
            //list of cart

            Expanded(
              child: Column(
                children: [
                  userCart.isEmpty ?  Expanded(
                      child: Center(
                          child: Text('Cart is empty ...')
                      )
                  )
              
                  :Expanded(child: ListView.builder(
                    itemCount: userCart.length,
                    itemBuilder: (context,index) {
                      //get individual cart item
                      final cartItem = userCart[index];
              
              
                      //return cart tile UI
                      return MyCartTile(cartItem: cartItem);
              
              
                    }
                  )
                  )
                ],
              ),
            ),
           // button to pay

            MyButton(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PaymentPage(),
                  )
              ),
              text: 'Go to Checkout',


            ),
            SizedBox(height: 25,)




          ],
        ),


      );




    });
  }
}
