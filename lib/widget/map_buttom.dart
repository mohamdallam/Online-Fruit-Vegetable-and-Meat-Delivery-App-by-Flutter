import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/iconhelper.dart';
import 'package:roman/model/sub_category.dart';
import 'package:roman/widget/category_icon.dart';
import 'package:roman/services/category_selection_service.dart';

class MapButton extends StatelessWidget {

  SubCategory subCategory;
 // MapButton({this.subCategory});
  @override
  Widget build(BuildContext context) {

    CategorySelectionService catSelection = Provider.of<CategorySelectionService>(context,listen: false);
    subCategory=catSelection.selectedSubCategory;

    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.2),
            offset: Offset.zero,
          ),
        ],
      ),
      child: Column(
        children: [
          //TODO:: IMAGES OF PRODUCT & ICON & NAME & LOCATION ICON
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    //TODO :: IMAGE
                    ClipOval(
                      child: Image.asset(
                        'assets/images/${subCategory.imgName}.png',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    //TODO :: ICON
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: CategoryIcon(
                        color: subCategory.color,
                        iconName: subCategory.icon,
                        size: 20,
                        padding: 5,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                //TODO TEXT AFTER IMAGE
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subCategory.name,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text('Sale By Pound'),
                      Text(
                        '2 km Away',
                        style: TextStyle(color: AppColors.MEATS),
                      ),
                    ],
                  ),
                ),
                //TODO ICONS OF LOCATION AFTER TEXT
                Icon(
                  Icons.location_pin,
                  color: subCategory.color,
                  size: 50,
                ),
              ],
            ),
          ),
          //TODO :: IMAGE OF FARMER AND NAME AND HIGHWAY ROAD
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/farmer.png',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: subCategory.color, width: 4),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jone Adam',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Highway Road'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
