import 'package:flutter/material.dart';

import '../widgets/cartIcon.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color:Colors.white),),
        backgroundColor: Color(0xFF0a2351),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          CartIconWithBadge(),
        ],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/img.png'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () {
                          // Handle edit profile picture
                        },
                        child: Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Hi there MontyD_Lemon!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle sign out
                },
                child: Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.red),
                ),
              ),
              SizedBox(height: 20),
              _buildTextField(label: 'Name', initialValue: 'MontyD_Lemon'),
              _buildTextField(label: 'Email', initialValue: 'MontyD_Lemon@email.com'),
              _buildTextField(label: 'Mobile No', initialValue: 'MontyD_Lemon@email.com'),
              //_buildTextField(label: 'Address', initialValue: 'No 23, 6th Lane, Colombo 03'),
              _buildTextField(label: 'Password', initialValue: '********', obscureText: true),
              _buildTextField(label: 'Confirm Password', initialValue: '********', obscureText: true),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle save action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String label, required String initialValue, bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
        ),
        obscureText: obscureText,
        controller: TextEditingController(text: initialValue),
      ),
    );
  }
}
