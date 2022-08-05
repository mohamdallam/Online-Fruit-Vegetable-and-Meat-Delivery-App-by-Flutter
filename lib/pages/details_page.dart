import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/model/cart_item.dart';

import 'package:roman/model/sub_category.dart';

import 'package:roman/pages/map_page.dart';
import 'package:roman/services/cart_service.dart';
import 'package:roman/widget/category_icon.dart';
import 'package:roman/widget/category_part_list.dart';

import 'package:roman/widget/main_app_bar.dart';
import 'package:roman/widget/theme_buttom.dart';
import 'package:roman/widget/unit_price_widget.dart';
import 'package:roman/services/category_selection_service.dart';



class DetailsPage extends StatefulWidget {
  int amount = 0;
  double price = 15.0;
  double cost = 0.0;

  SubCategory subCategory;
  DetailsPage({this.subCategory});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context,listen: false);
    widget.subCategory=catSelection.selectedSubCategory;
    CartService cartService = Provider.of<CartService>(context,listen:  false);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,

        //Column
        child: ListView(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  //TODO :: IMAGE OF PRODUCT ON TOP PAGE
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/' +
                              widget.subCategory.imgName +
                              '.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  //TODO :: GRADIENT ON IMAGE
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                            Colors.black.withOpacity(.6),
                            Colors.transparent,
                          ])),
                    ),
                  ),
                  //TODO :: PRICE & ICONS ON IAMGE
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory.color,
                            iconName: widget.subCategory.icon,
                            size: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Price',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: widget.subCategory.color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text('\$50.00'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //TODO :: shopping_cart ICONS ON IMAGES
                  Positioned(
                    right: 20,
                    top: 100,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 8),
                      decoration: BoxDecoration(
                        color: AppColors.MAIN_COLOR,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          // Text('3',style: TextStyle(color: Colors.white, fontSize: 15)),
                          // New
                          Consumer<CartService>(
                            builder: (context,cart,child){
                              return Text('${cart.items.length}',style: TextStyle(color: Colors.white, fontSize: 15));
                            },
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  MainAppBar(
                    themeColor: Colors.white,
                  ),
                ],
              ),
            ),
            // Expanded( child:
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // TODO: HORIZONTAL LIST OF CATEGORY PART
                  CategoryPartlist(subCategory: widget.subCategory),
                  // TODO: ADD & REMOVE PRICE WIDGET
                  UnitPriceWidget(
                    themeColor: widget.subCategory.color,
                    price: widget.subCategory.price,
                    //unit: widget.subCategory.unit,
                  ),

                  // TODO: BUTTON Add To Cart CONSUMER
        Consumer<CartService>(
          builder: (context,cart,child){
            Widget renderedButton;
            if (!cart.isSubCategoryAddedToCart(widget.subCategory)) {
              renderedButton = ThemeButton(
                label: 'Add To Cart',
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onClick: () {
                  cartService.add(CartItem(category: widget.subCategory)
                  );
                },
              );
            }
            else {
              renderedButton = Container(
                padding: EdgeInsets.all(26),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Add To Cart', style: TextStyle( fontSize: 15,fontWeight: FontWeight.bold, color: AppColors.MAIN_COLOR)),
                    SizedBox(width: 10),
                    Icon(Icons.check_circle, size: 30, color: AppColors.MAIN_COLOR)
                  ],
                ),
              );
            }
            return renderedButton;
          },
        ),

                  // TODO: BUTTON Add To Cart
                  // ThemeButton(
                  //   label: 'Add To Cart',
                  //   icon: Icon(
                  //     Icons.shopping_cart,
                  //     color: Colors.white,
                  //   ),
                  //   onClick: () {
                  //     // New
                  //     cartService.add( CartItem(category: widget.subCategory) );
                  //   },
                  // ),


                  // TODO: BUTTON Product Location


                  ThemeButton(
                    label: 'Product Location',
                    icon: Icon(
                      Icons.location_pin,
                      color: Colors.white,
                    ),
                    color: AppColors.DARK_GREEN,
                    onClick: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MapPage(

                           // subCategory: widget.subCategory,

                          )));
                    },
                  ),
                ],
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
