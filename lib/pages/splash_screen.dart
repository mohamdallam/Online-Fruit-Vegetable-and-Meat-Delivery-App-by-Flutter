import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/services/category_service.dart';

class SplashPage extends StatelessWidget {
  int duration = 0;
  String goToPage;

// Widget goToPage;

  SplashPage({this.duration, this.goToPage});

  @override
  Widget build(BuildContext context) {
    CategoryService catService =
        Provider.of<CategoryService>(context, listen: false);
    Future.delayed(Duration(seconds: duration), () async {
      //  WidgetsFlutterBinding.ensureInitialized();
      //TODO :: Await For The FireBase Initalization To Occur
      FirebaseApp app = await Firebase.initializeApp();
      //TODO :: Fetch The Category From Firebase
      catService.getCategoriesCollectionFromFirebase().then((value) {
        //  Utils.mainAppNav.currentState.pushNamed(this.goToPage);
      });

      Utils.mainAppNav.currentState.pushNamed(this.goToPage);

      // Navigator.push(
      //     context, MaterialPageRoute(builder: (context) => goToPage));
    });

    return Scaffold(
      body: Container(
        color: Colors.green,
        alignment: Alignment.center,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Center(
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 150,
                height: 150,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Colors.white.withOpacity(.5),
                  ),
                ),
              ),
            ),
          ],
        ),

        // IconFont(
        //   iconName: IconFontHelper.LOGO,
        //   color: Colors.white,
        //   size: 100,
        // ),
      ),
    );
  }
}
