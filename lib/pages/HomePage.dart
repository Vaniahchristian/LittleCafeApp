import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:littlecafe/models/food.dart';
import '../models/restaurant.dart';
import '../widgets/BottomNavBarWidget.dart';
import '../widgets/my_current_location.dart';
import '../widgets/my_description_box.dart';
import '../widgets/my_drawer.dart';
import '../widgets/my_food_tile.dart';
import '../widgets/my_silver_appbar.dart';
import '../widgets/my_tab_bar.dart';
import 'food_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  //tabbar controller
   late TabController  _tabController;


   @override
   void initState() {
     _tabController = TabController(length: FoodCategory.values.length, vsync: this);
     super.initState();
   }

   @override
   void dispose(){
     _tabController.dispose();
     super.dispose();


   }

   // sort out and return a list of food items that belong to a specific category
    List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu ){

     return fullMenu.where((food)=> food.category == category).toList();
    }


    // return list of food in a given category

   List<Widget>getFoodInThisCategory(List<Food> fullMenu){

     return FoodCategory.values.map((category) {

       List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);

       return ListView.builder(
           itemCount: categoryMenu.length,
           physics: NeverScrollableScrollPhysics(),
           padding: EdgeInsets.zero,
           itemBuilder: (context,index){

             //get individual food

             final food = categoryMenu[index];

             //get food tile UI


             return FoodTile(
                 food: food,
                 onTap: () => Navigator.push(context,MaterialPageRoute(builder :(context) => FoodPage(food:food),
                 ),
                 ),
             );
           },
       );
     }).toList();

   }









  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySliverAppBar(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                children: [

                  Divider(
                    indent: 25, endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  //MY CURRENT LOCATION
                  MyCurrentLocation(),


                  //DESCRIPTION
                  MyDescriptionBox(),

            ]

            ),
            title: MyTabBar(tabController:_tabController ,),
          )
        ],
        body: Consumer<Restaurant>(builder: (context,restaurant,child) => TabBarView(
            controller: _tabController,
            children: getFoodInThisCategory(restaurant.menu),
        ),
        )
      ),

      /*body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            SearchWidget(),
            SizedBox(height: 10),
            TopMenus(),
            SizedBox(height: 10),
            PopularFoodsWidget(),
            //BestFoodWidget(),
            SizedBox(height: 10),
          ],
        ),
      ),*/
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
