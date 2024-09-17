import 'package:flutter/material.dart';
import 'package:littlecafe/widgets/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery  in Progress...."),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _buildBottomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      ),
    );
  }

  //Custom Bottom Nav Bar-Message or call delivery driver

  Widget _buildBottomNavBar(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )
      ),
      
      padding: EdgeInsets.all(25),
      child: Row(

        // profile picture of the driver
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person),
          ),

          SizedBox(
            width: 10,
          ),

          // driver details
          
          Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              
              Text("MUKISA VANIAH",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              ),
              Text("Driver",
                style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.primary,
                ),
              )

              
              
            ],
            
            
          ),

          Spacer(),

          Row(
            children: [
              // message button

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    icon:Icon(Icons.message),
                  onPressed: () {  },

                ),
              ),
              SizedBox(width: 10,),



              //call button

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  shape: BoxShape.circle,
                ),
                child: IconButton(

                  onPressed: () {  },
                  icon: Icon(Icons.call),
                  color: Colors.green,
                ),
              ),




            ],

          ),





        ],
      ),
    );
  }
}
