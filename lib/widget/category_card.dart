import 'package:flutter/material.dart';
import 'package:roman/model/category.dart';
import 'package:roman/widget/category_icon.dart';

class CategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;

  CategoryCard({this.category, this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onCardClick();
      },
      child: Container(
        margin: EdgeInsets.all(20),
        height: 150,
        child: Stack(
          children: [
            //TODO: Image of List Category
            Positioned.fill(
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/' + category.imgName + '.png',
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            //TODO: Gradient And Decoration On Image
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(.7), Colors.transparent],
                  ),
                ),
              ),
            ),
            //TODO Category Icon And Name
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    // TODO Category Icon
                    CategoryIcon(
                      color: category.color,
                      iconName: category.icon,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // TODO Category Name
                    Text(
                      category.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
