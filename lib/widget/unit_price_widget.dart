import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/model/sub_category.dart';
import 'package:roman/services/category_selection_service.dart';

const int MAX_VALUE = 20;
const int MIN_VALUE = 0;

class UnitPriceWidget extends StatefulWidget {
  Color themeColor;
  int amount = 0;
  double price = 15.0;

  // WeightUnits unit;
  double cost = 0.0;

  UnitPriceWidget({
    this.themeColor = AppColors.MAIN_COLOR,
    this.price = 0,
    // this.unit = WeightUnits.Lb,
  });

  @override
  _UnitPriceWidgetState createState() => _UnitPriceWidgetState();
}

class _UnitPriceWidgetState extends State<UnitPriceWidget> {
  @override
  Widget build(BuildContext context) {
    CategorySelectionService catSelection =
        Provider.of<CategorySelectionService>(context);
    SubCategory subCategory = catSelection.selectedSubCategory;

    widget.themeColor = subCategory.color;
    widget.price = subCategory.price;
    // widget.unit = subCategory.unit;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Unidad'),
                TextSpan(
                    text: 'Libra',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: '(max.20)', style: TextStyle(fontSize: 12)),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    offset: Offset.zero,
                    color: Colors.black.withOpacity(.1)),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Icon(
                  Icons.add_circle_outline,
                  size: 50,
                  color: catSelection.subCategoryAmount < MAX_VALUE
                      ? widget.themeColor
                      : widget.themeColor.withOpacity(.2),
                ),

                onTap: catSelection.subCategoryAmount < MAX_VALUE
                    ? () {
                     catSelection.incrementSubCategoryAmount();
                      }
                    : null,
                //TODO: Increment
                // onTap:widget.amount <20 ?(){
                //   //TODO: Increment
                //   setState(() {
                //     widget.amount++;
                //     widget.cost = widget.price * widget.amount;
                //   });
                // }:null,
              ),
              Expanded(
                child:
                    // NEW
                    Consumer<CategorySelectionService>(
                  builder: (context, cat, child) {
                    return Center(
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: catSelection.subCategoryAmount.toString(),
                              style: TextStyle(fontSize: 40),
                            ),
                            TextSpan(
                              text: 'lbs',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                // Center(
                //   child: Text.rich(
                //     TextSpan(
                //       children: [
                //         TextSpan(
                //           text: widget.amount.toString(),
                //           style: TextStyle(fontSize: 40),
                //         ),
                //         TextSpan(
                //           text: 'lbs',
                //           style: TextStyle(fontSize: 20),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ),
              //TODO: Decrement
              GestureDetector(
                onTap: catSelection.subCategoryAmount > MIN_VALUE
                    ? () {
                       catSelection.decrementSubCategoryAmount();
                      }
                    : null,

                // onTap:widget.amount>0?(){
                //   //TODO: Decrement
                //   setState(() {
                //     widget.amount--;
                //     widget.cost = widget.price * widget.amount;
                //   });
                // }:null,
                child: Icon(
                  Icons.remove_circle_outline,
                  size: 50,
                  color: catSelection.subCategoryAmount > MIN_VALUE
                      ? Colors.grey
                      : Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'price'),
                    TextSpan(
                        text: '\$${widget.price}',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Text(
                "\$${widget.cost}",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
