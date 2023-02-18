import "package:flutter/material.dart";
import "package:menu/app/Components/Category/MainCategory.dart";
import "package:menu/app/Components/Food/MainFoodCard.dart";
import "package:menu/app/Components/Home/SeeAll.dart";
import "package:menu/app/Components/Navbar.dart";
import "package:menu/app/Components/Search.dart";
import "package:menu/app/Components/WelcomeMsg.dart";
import "package:menu/global.dart";
import "package:responsive_grid_list/responsive_grid_list.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                  const Navbar(showBackBtn: true),
                  const WelcomeMsg(),
                  const Search(),
                  SeeAll(text: "الأقسام", onTap: ()=> null),
                  const MainCategory(),
                  SizedBox(
                    height: 400,
                    width: width(context),
                    child:ResponsiveGridList(
                        horizontalGridSpacing: 16, // Horizontal space between grid items
                        verticalGridSpacing: 5, // Vertical space between grid items
                        horizontalGridMargin: 0, // Horizontal space around the grid
                        verticalGridMargin: 50, // Vertical space around the grid
                        minItemWidth: 300, // The minimum item width (can be smaller, if the layout constraints are smaller)
                        minItemsPerRow: 1, // The minimum items to show in a single row. Takes precedence over minItemWidth
                        maxItemsPerRow: 5, // The maximum items to show in a single row. Can be useful on large screens
                        listViewBuilderOptions: ListViewBuilderOptions(
                          physics: BouncingScrollPhysics(),
                        ), // Options that are getting passed to the ListView.builder() function
                        children: [
                          MainFoodCard(),
                          MainFoodCard(),
                          MainFoodCard(),
                        ], // The list of widgets in the list
                    )
                  )
              ],
            ),
          ),
        ),
      ),
    );
  
  }
}

  