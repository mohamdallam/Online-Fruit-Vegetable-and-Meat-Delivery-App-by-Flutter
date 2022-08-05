import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/model/category.dart';
import 'package:roman/pages/settingpage.dart';
import 'package:roman/pages/shoppinglistpage.dart';
import 'package:roman/widget/category_bottom_bar.dart';
import 'package:roman/widget/main_app_bar.dart';

import 'package:roman/widget/side_menu_bar.dart';

import 'categorylistpage.dart';
import 'favoritespage.dart';

// ignore: must_be_immutable
class MainPage extends StatelessWidget {
  //List<Category> categories = Utils.getCategories();

  @override
  Widget build(BuildContext context) {
  //  CategorySelectionService catSelection =  Provider.of<CategorySelectionService>(context, listen: false);

    // CartService cartService = Provider.of<CartService>(context, listen: false);
    // cartService.loadCartItemsFromFirebase(context);

    return Scaffold(
      drawer: Drawer(
        child: SideMenuBar(),
      ),
      appBar: MainAppBar(),
      body: Container(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    'Select A Product',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Expanded(
                  child: Navigator(
                    key: Utils.mainListNav,
                    initialRoute: '/',
                    onGenerateRoute: (RouteSettings settings) {
                      Widget page;

                      switch (settings.name) {
                        case '/':
                          page = CategoryListPage();
                          break;
                        case '/mainpage/favoritespage':
                          page = FavoritesPage();
                          break;
                        case '/mainpage/shoppinglistpage':
                          page = ShoppingListPage();
                          break;
                        case '/mainpage/settingpage':
                          page = SettingsPage();
                          break;
                        default:
                          page = CategoryListPage();
                          break;
                      }

                      return PageRouteBuilder(
                          pageBuilder: (_, __, ___) => page,
                          transitionDuration: const Duration(seconds: 0));
                    },
                  ),
                ),
                //TODO : Navigation Bottom Bar
                CategoryBottomBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
