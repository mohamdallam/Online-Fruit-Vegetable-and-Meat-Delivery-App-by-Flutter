import 'package:flutter/material.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/iconhelper.dart';
import 'package:roman/model/category.dart';
import 'package:roman/model/category_part.dart';
import 'package:roman/model/onboarding.dart';
import 'package:roman/model/sub_category.dart';

class Utils {

  static GlobalKey<NavigatorState> mainListNav = GlobalKey();
  static GlobalKey<NavigatorState> mainAppNav = GlobalKey();

  static List<OnBoarding> getOnboarding() {
    return [
      OnBoarding(
        message: 'Fresh Products,From The Earth To Your Table',
        img: 'boardingone',
      ),
      OnBoarding(
        message: 'Fresh And Healthy Meats And Sausages For Your Delight',
        img: 'boardingtwo',
      ),
      OnBoarding(
        message: 'Get Them From The Comfort Of Your Mobile Device',
        img: 'boardingthree',
      ),
    ];
  }

  static List<Category> getCategories() {
    return [
      //TODO: Meat
      Category(
        color: AppColors.MEATS,
        name: "Meat",
        imgName: 'cat_chicken',
        icon: IconFontHelper.MEATS,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Beef",
            imgName: "meat_beef",
            icon: IconFontHelper.MEATS,
            // parts: [
            //   CategoryPart(
            //     name: 'one',
            //     imgName: 'partone',
            //     isSelected: false,
            //   ),
            //   CategoryPart(
            //     name: 'two',
            //     imgName: 'parttwo',
            //     isSelected: false,
            //   ),
            //   CategoryPart(
            //     name: 'three',
            //     imgName: 'partthree',
            //     isSelected: false,
            //   ),
            //   CategoryPart(
            //     name: 'four',
            //     imgName: 'partfour',
            //     isSelected: false,
            //   ),
            //   CategoryPart(
            //     name: 'five',
            //     imgName: 'partfive',
            //     isSelected: false,
            //   ),
            //   CategoryPart(
            //     name: 'six',
            //     imgName: 'partsix',
            //     isSelected: false,
            //   ),
            // ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Chickens",
            imgName: "meat_chickens",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Goat",
            imgName: "meat_goat",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Rabbit",
            imgName: "meat_rabbit",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Sheep",
            imgName: "meat_sheep",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Turkey",
            imgName: "meat_turkey",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
        ],
      ),
      //TODO: Fruits
      Category(
        color: AppColors.FRUITS,
        name: "Fruits",
        imgName: 'cat_fruits',
        icon: IconFontHelper.FRUITS,
        subCategories: [
          SubCategory(
            color: AppColors.FRUITS,
            name: "Apple",
            imgName: "fru_apple",
            icon: IconFontHelper.FRUITS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Banana",
            imgName: "fru_banana",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Fig",
            imgName: "fru_fig",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Kiwi",
            imgName: "fru_kiwi",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.MEATS,
              name: "Orange",
              imgName: "fru_orange",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Watermelon",
              imgName: "fru_watermelon",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
        ],
      ),
      //TODO: Seeds
      Category(
        color: AppColors.SEEDS,
        name: "Seeds",
        imgName: 'cat_seeds',
        icon: IconFontHelper.SEEDS,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Almonds",
            imgName: "seed_almonds",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.MEATS,
              name: "Cajuil",
              imgName: "seed_cajuil",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Lupini Beans",
              imgName: "seed_lupinibeans",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Peanuts",
              imgName: "seed_peanuts",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Pistachio",
              imgName: "seed_pistachio",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Pumpkin",
              imgName: "seed_pumpkin",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
        ],
      ),
      //TODO: Vegetables
      Category(
        color: AppColors.VEGS,
        name: "vegetables",
        imgName: 'cat_vegetables',
        icon: IconFontHelper.VEGS,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Carrotes",
            imgName: "veg_carrotes",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.MEATS,
              name: "Garlic",
              imgName: "veg_garlic",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Onion",
              imgName: "veg_onion",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Pepper",
              imgName: "veg_pepper",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Potato",
              imgName: "veg_potato",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Tomato",
              imgName: "veg_tomato",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
        ],
      ),
      //TODO: Pastries
      Category(
        color: AppColors.PASTRIES,
        name: "Pastries",
        imgName: 'cat_pastries',
        icon: IconFontHelper.PASTRIES,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Cannoli",
            imgName: "past_cannoli",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.MEATS,
              name: "Croissants",
              imgName: "past_croissants",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Danishes",
              imgName: "past_danishes",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Macarons",
              imgName: "past_macarons",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Pies",
              imgName: "past_pies",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Profiteroles",
              imgName: "past_profiteroles",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
        ],
      ),
      //TODO: Spices
      Category(
        color: AppColors.SPICES,
        name: "Spices",
        imgName: 'cat_semillas',
        icon: IconFontHelper.SPICES,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Black Pepper",
            imgName: "spi_blackpepper",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
          SubCategory(
              color: AppColors.MEATS,
              name: "Chili Pepper",
              imgName: "spi_chilipepper",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Ginger",
              imgName: "spi_ginger",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Paprika",
              imgName: "spi_paprika",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
              color: AppColors.MEATS,
              name: "Saffron",
              imgName: "spi_saffron",
              icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                  name: 'one',
                  imgName: 'partone',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'two',
                  imgName: 'parttwo',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'three',
                  imgName: 'partthree',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'four',
                  imgName: 'partfour',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'five',
                  imgName: 'partfive',
                  isSelected: false,
                ),
                CategoryPart(
                  name: 'six',
                  imgName: 'partsix',
                  isSelected: false,
                ),
              ]),
          SubCategory(
            color: AppColors.MEATS,
            name: "Sumac",
            imgName: "spi_sumac",
            icon: IconFontHelper.MEATS,
            parts: [
              CategoryPart(
                name: 'one',
                imgName: 'partone',
                isSelected: false,
              ),
              CategoryPart(
                name: 'two',
                imgName: 'parttwo',
                isSelected: false,
              ),
              CategoryPart(
                name: 'three',
                imgName: 'partthree',
                isSelected: false,
              ),
              CategoryPart(
                name: 'four',
                imgName: 'partfour',
                isSelected: false,
              ),
              CategoryPart(
                name: 'five',
                imgName: 'partfive',
                isSelected: false,
              ),
              CategoryPart(
                name: 'six',
                imgName: 'partsix',
                isSelected: false,
              ),
            ],
          ),
        ],
      ),
    ];
  }

static String deviceSuffix(BuildContext context) {
  String deviceSuffix = '';
  TargetPlatform platform = Theme.of(context).platform;
  switch(platform) {
    case TargetPlatform.android:
      deviceSuffix = '_android';
      break;
    case TargetPlatform.iOS:
      deviceSuffix = '_ios';
      break;
    default:
      deviceSuffix = '';
      break;
  }

  return deviceSuffix;
}

}
