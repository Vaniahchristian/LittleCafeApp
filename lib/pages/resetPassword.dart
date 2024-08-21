import 'package:flutter/material.dart';


class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0a2351),
        leading: IconButton(

          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
         color:Colors.white ,
        ),
        //title: Text('Reset Password'),
        //centerTitle: true, // Center the title in the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Aligns text to the center
          children: [
            SizedBox(height: 60), // Adds space from the top
            Text(
              'Reset Password',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), // Adds some space between the text and description
            Text(
              'Please enter your phone number to receive a link to create a new password via SMS',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement the action when the button is pressed
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0a2351),
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Send',
                style: TextStyle(fontSize: 18,color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
