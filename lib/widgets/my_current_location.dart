import 'package:flutter/material.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Your location'),
        content: TextField(
          decoration: InputDecoration(hintText: "Search address .."),
        ),
        actions: [
          //cancel button

          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Save"),
          ),

          //save button
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Deliver now',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
              onTap: () => openLocationSearchBox(context),
              child: Row(
                children: [
                  // address
                  Text(
                    '6901 Hollywood blv',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Icon(Icons.keyboard_arrow_down)

                  //drop down menu
                ],
              )),
        ],
      ),
    );
  }
}
