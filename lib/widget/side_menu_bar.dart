import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/iconhelper.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/services/login_services.dart';
import 'package:roman/widget/iconfont.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    LoginService loginService =
        Provider.of<LoginService>(context, listen: false);
    bool userLoggedIn = loginService.loggedInUserModel != null;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        color: AppColors.MAIN_COLOR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //TODO:: TEXT BUTTON SIGN OUT
            TextButton(
              onPressed: () async{
                if(userLoggedIn){
                  await loginService.signOut();
                  //Navigator.of(context)
                 Utils.mainAppNav.currentState.pushReplacementNamed('/welcomepage');
                }
                else{
                  bool success = await loginService.signInWithGoogle();
                  if (success){
                    //'/categorylistpage'
                    Utils.mainAppNav.currentState.pushNamed('/mainpage');
                  }
                }
              },
              child: Row(
                children: [
                  Icon(userLoggedIn ? Icons.logout : Icons.login, color: Colors.white, size: 20),
                  SizedBox(width: 10),
                  Text( userLoggedIn ? 'Sign Out' : 'Sign IN',style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
            IconFont(
              iconName: IconFontHelper.LOGO,
              size: 70,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
