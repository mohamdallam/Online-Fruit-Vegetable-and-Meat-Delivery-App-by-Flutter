import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/model/category.dart';
import 'package:roman/services/category_service.dart';
import 'package:roman/widget/category_card.dart';
import 'package:roman/services/category_selection_service.dart';
import 'package:roman/widget/side_menu_bar.dart';

class CategoryListPage extends StatelessWidget {

 List<Category> categories = Utils.getCategories();

 // List<Category> categories = [];

  @override
  Widget build(BuildContext context) {
    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context, listen: false);
    // CategoryService catService = Provider.of<CategoryService>(context,listen: false);
    // categories = catService.getCategories();
    return Scaffold(
      drawer: Drawer(
        child: SideMenuBar(),
      ),
      //appBar: MainAppBar(),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(top: 10, bottom: 10),
                //   child: Text(
                //     'Select A Product',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(color: Colors.black),
                //   ),
                // ),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 100),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      //TODO : Image of Category $ Gradient And Decoration On Image & Icon And Name
                      return CategoryCard(
                        category: categories[index],
                        onCardClick: () {
                          //  TODO: Navigate to another page When Click Category Image

                          catSelection.selectedCategory = categories[index];
                          //Navigator.of(context)
                          // Utils.mainAppNav.currentState
                          Utils.mainAppNav.currentState
                              .pushNamed('/selectedcategorypage');

                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => SelectedCategoryPage(

                          //  slectedCategory: categories[index],

                          //     ),
                          //   ),
                          // );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),

            //TODO : Navigation Bottom Bar
            // Positioned(
            //   bottom: 0,
            //   left: 0,
            //   right: 0,
            //   child: CategoryBottomBar(),
            // ),
          ],
        ),
      ),
    );
  }
}
