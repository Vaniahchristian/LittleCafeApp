


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalCalculationWidget extends StatelessWidget {
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
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Grilled Salmon",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\UGX192",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Meat vegetable",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    "\UGX102",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "\UGX292",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF3a3a3b),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}