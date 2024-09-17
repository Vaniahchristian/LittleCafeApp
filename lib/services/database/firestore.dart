

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {


  //get collecton of orders
  final CollectionReference orders = FirebaseFirestore.instance.collection("order");



  //save order to db
   Future<void> saveOrderToDatabase(String receipt) async {
     await orders.add({
       'date': DateTime.now(),
       'order':receipt,

       //add more fields as necessry




     },
     );



   }

}