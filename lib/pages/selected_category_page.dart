import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/model/category.dart';
import 'package:roman/services/cart_service.dart';
//import 'package:roman/pages/details_page.dart';
import 'package:roman/widget/category_icon.dart';

import 'package:roman/widget/main_app_bar.dart';
import 'package:roman/services/category_selection_service.dart';

class SelectedCategoryPage extends StatelessWidget {

  Category slectedCategory;
  SelectedCategoryPage({this.slectedCategory});

  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context,listen: false);
    slectedCategory = catSelection.selectedCategory;
    CartService cartService = Provider.of<CartService>(context,listen: false);

    return Scaffold(
      appBar: MainAppBar(),

      body: Container(

        child: Column(
          children: [
            // TODO: Iconn & Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CategoryIcon(
                  color: slectedCategory.color,
                  iconName: slectedCategory.icon,
                ),
                SizedBox(width: 10),
                Text(
                  slectedCategory.name,
                  style: TextStyle(
                    color: slectedCategory.color,
                    fontSize: 20,
                  ),
                )
              ],
            ),
            // TODO: Selected Category Images Grid View
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(
                  slectedCategory.subCategories.length,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        //  TODO:: Navigate to Details Page
                        var subCat = slectedCategory.subCategories[index];
                        catSelection.selectedSubCategory=cartService.getCategoryFromCart(subCat);

                        //  Navigator.of(context)
                        Utils.mainAppNav.currentState.pushNamed('/detailspage');

                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => DetailsPage(
                        //       subCategory: slectedCategory.subCategories[index],
                        //     ),
                        //   ),
                        // );
                      },
                      child: Container(
                        child: Column(
                          children: [
                            // TODO:: IMAGE
                            ClipOval(
                              child: Image.asset(
                                  'assets/images/' +
                                      slectedCategory
                                          .subCategories[index].imgName +
                                      '.png',
                                  fit: BoxFit.cover,
                                  width: 100,
                                  height: 100),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // TODO:: NAME
                            Text(
                              slectedCategory.subCategories[index].name,
                              style: TextStyle(color: slectedCategory.color),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
