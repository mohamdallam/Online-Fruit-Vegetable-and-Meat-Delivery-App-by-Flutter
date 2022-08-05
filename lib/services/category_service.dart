import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:roman/model/category.dart';
import 'package:roman/model/category_part.dart';
import 'package:roman/model/sub_category.dart';

class CategoryService {

  FirebaseFirestore _instance;
  List<Category> _categories = [];

  List<Category> getCategories() {
    return _categories;
  }

  Future<void> getCategoriesCollectionFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference categories = _instance.collection("lome_featch_data");
    DocumentSnapshot snapshot = await categories.doc('categories').get();

    // if (snapshot.exists) {
      //Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      var data = snapshot.data() as Map;
      var categoriesData = data['categories'] as List<dynamic>;


      categoriesData.forEach((catData) {
        //TODO :: Convert Each catData Into The Appropriate Model
        // Category cat = Category.fromJson(catData);
        // _categories.add(cat);
        _categories.add(Category.fromJson(catData));
      });
    }
  }

  // void resetCategoriesToDefaults() {
  //   if (_categories.length > 0) {
  //     _categories.forEach((Category cat) {
  //       cat.subCategories.forEach((Category subCat) {
  //
  //         (subCat as SubCategory).parts.forEach((CategoryPart part) {
  //           part.isSelected = false;
  //         });
  //
  //         (subCat as SubCategory).amount = 0;
  //       });
  //     });
  //   }
  // }
  //

