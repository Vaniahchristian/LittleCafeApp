import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/addToCart.dart';
import '../widgets/bottomMenu.dart';
import '../widgets/cartIcon.dart';
import '../widgets/detailContent.dart';
import '../widgets/foodTitle.dart';

class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          actions: <Widget>[
            CartIconWithBadge(),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  'assets/images/bestfood/' + 'ic_best_food_8' + ".jpeg",
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                elevation: 1,
                margin: EdgeInsets.all(5),
              ),
            ),
            Expanded(
              flex: 1,
              child: FoodTitleWidget(
                productName: "Grilled Salmon",
                productPrice: "\UGX96.00",
                //productHost: "Little Cafe",
              ),
            ),
            SizedBox(
              height: 15,
            ),
            AddToCartMenu(),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              child: PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Color(0xFF404aff),
                  indicatorColor: Color(0xFF404aff),
                  unselectedLabelColor: Color(0xFFa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(
                      text: 'Food Details',
                    ),
                    Tab(
                      text: 'Food Reviews',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.white24,
                    child: DetailContentMenu(),
                  ),
                  Container(
                    color: Colors.white24,
                    child: DetailContentMenu(),
                  ),
                ],
              ),
            ),
            BottomMenu(),
          ],
        ),
      ),
    );
  }
}
