import 'package:flutter/material.dart';
import '../widgets/BestFoodWidget.dart';
import '../widgets/BottomNavBarWidget.dart';
import '../widgets/PopularFoodsWidget.dart';
import '../widgets/Profile.dart';
import '../widgets/SearchWidget.dart';
import '../widgets/TopMenus.dart';
import 'SignInPage.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            SearchWidget(),
            SizedBox(height: 10),
            TopMenus(),
            SizedBox(height: 10),
            PopularFoodsWidget(),
            BestFoodWidget(),
            SizedBox(height: 10),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
