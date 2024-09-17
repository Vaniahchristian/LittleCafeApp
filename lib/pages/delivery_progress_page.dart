import 'package:flutter/material.dart';
import 'package:littlecafe/services/database/firestore.dart';
import 'package:littlecafe/widgets/my_receipt.dart';
import 'package:provider/provider.dart';
import '../models/restaurant.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {

  //get access to db
  FirestoreService db = FirestoreService();



  @override
  void initState() {

    super.initState();

    //if we get to this page , we submit order to the firestore db

    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

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
