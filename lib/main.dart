import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/pages/mainpage.dart';
import 'package:roman/services/cart_service.dart';
import 'package:roman/services/category_selection_service.dart';
import 'package:roman/pages/details_page.dart';
import 'package:roman/pages/map_page.dart';
import 'package:roman/pages/onboarding_page.dart';
import 'package:roman/pages/selected_category_page.dart';
import 'package:roman/pages/splash_screen.dart';
import 'package:roman/pages/welcome_page.dart';
import 'package:roman/services/category_service.dart';
import 'package:roman/services/login_services.dart';

void main() async{
// WidgetsFlutterBinding.ensureInitialized();
 // FirebaseApp app = await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => LoginService(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategorySelectionService(),
        ),
        ChangeNotifierProvider(
          create: (_) => CartService(),
        ),
        Provider(
          create: (_) => CategoryService(),
        ),
      ],
      child: MaterialApp(
        navigatorKey: Utils.mainAppNav,
        theme: ThemeData(fontFamily: "Raleway"),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
        // '/': (context) => SplashPage(duration: 3, goToPage: WelcomePage()),
         '/': (context) => SplashPage(duration: 3, goToPage: '/welcomepage'),
          '/welcomepage': (context) => WelcomePage(),
          '/mainpage': (context) => MainPage(),
          '/selectedcategorypage': (context) => SelectedCategoryPage(),
          '/detailspage': (context) => DetailsPage(),
          '/mappage': (context) => MapPage(),
          '/onboardingpage': (context) => OnboardingPage(),
        },
      ),
    ),
  );

  });
}




//OnboardingPage(),
//SplashPage(duration: 5, goToPage: WelcomePage(), ),
//CategoryListPage(),
//SplashPage( duration: 5, goToPage: WelcomePage(),),
//MapPage()
//OnboardingPage()
//CategoryList()


// LoginService() {
//   Firebase.initializeApp();
// }