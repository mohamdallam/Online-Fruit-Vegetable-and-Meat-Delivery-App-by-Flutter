import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roman/model/login_user_model.dart';
import 'package:roman/services/login_services.dart';

class UserProfileHeader extends StatelessWidget {
  bool showProfilePic;

  UserProfileHeader({this.showProfilePic});

  @override
  Widget build(BuildContext context) {
    LoginService loginService = Provider.of<LoginService>(context, listen: false);
    LoginUserModel userModel = loginService.loggedInUserModel;

    String imgPath = userModel != null ? userModel.photoUrl : '';

    return showProfilePic && imgPath.length > 0
        ? Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(10),
            child: ClipOval(
              child: Image.network(imgPath),
              //child: Image.asset('assets/images/profile.png'),
            ),
          )
        : SizedBox(width: 40, height: 40);
  }
}
