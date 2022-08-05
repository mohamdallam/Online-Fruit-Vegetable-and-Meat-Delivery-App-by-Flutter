import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/services/login_services.dart';
import 'package:roman/widget/theme_buttom.dart';

class WelcomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    LoginService loginService = Provider.of<LoginService>(context,listen: false);

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: .5,
                child: Image.asset(
                  "assets/images/welcome.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 100,
                        height: 100,
                        color: AppColors.MAIN_COLOR,
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage("assets/images/logo2.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Fresh Produce \n Healthy On Time",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  //TODO:: BUTTON BRING NOW
                  ThemeButton(
                    label: 'Bring Now',
                    highlight: Colors.green[900],
                    color: Colors.transparent,
                    onClick: () {
                      Utils.mainAppNav.currentState .pushNamed('/mainpage');
                      //     Navigator.of(context)
                      //'/categorylistpage'

                    },
                  ),
                  //TODO:: BUTTON BOARDING
                  ThemeButton(
                    label: 'Boarding',
                    highlight: Colors.green[900],
                    color: Colors.transparent,
                    onClick: () {
                      Utils.mainAppNav.currentState.pushNamed('/onboardingpage');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => OnboardingPage()));
                    },
                  ),
                  //TODO:: BUTTON LOGIN
                  ThemeButton(
                    label: "Login",
                    labelColor: AppColors.MAIN_COLOR,
                    color: Colors.transparent,
                    highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                    borderColor: AppColors.MAIN_COLOR,
                    borderWidth: 4,
                    onClick: () async {
                      bool success = await loginService.signInWithGoogle();

                      if (success) {
                        //'/categorylistpage'
                        Utils.mainAppNav.currentState.pushNamed('/mainpage');
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => CategoryListPage()));
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
