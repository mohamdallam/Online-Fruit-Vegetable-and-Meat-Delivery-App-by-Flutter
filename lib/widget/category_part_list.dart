import 'package:flutter/material.dart';
import 'package:roman/model/category_part.dart';
import 'package:roman/model/sub_category.dart';

class CategoryPartlist extends StatefulWidget {

  SubCategory subCategory;
  CategoryPartlist({this.subCategory});
  @override
  _CategoryPartlistState createState() => _CategoryPartlistState();
}

class _CategoryPartlistState extends State<CategoryPartlist> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Text("Select the product"),
        ),
        Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.subCategory.parts.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
// TODO: change the selected state of each part
                  setState(() {
                    widget.subCategory.parts
                        .forEach((CategoryPart part) {
                      part.isSelected =
                          widget.subCategory.parts[index] == part;
                    });
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(15),
                      width: 120,
                      height: 150,
                      decoration: BoxDecoration(
                        border: widget
                            .subCategory.parts[index].isSelected
                            ? Border.all(
                            color: widget.subCategory.color,
                            width: 7)
                            : null,
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage('assets/images/' +
                                widget.subCategory.parts[index]
                                    .imgName +
                                '.png'),
                            fit: BoxFit.cover),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.1),
                              offset: Offset.zero,
                              blurRadius: 10),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: Text(
                        widget.subCategory.parts[index].name,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: widget.subCategory.color),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
