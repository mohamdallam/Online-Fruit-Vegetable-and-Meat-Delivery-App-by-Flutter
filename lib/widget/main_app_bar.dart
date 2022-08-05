import 'package:flutter/material.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/iconhelper.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/widget/iconfont.dart';
import 'package:roman/widget/user_profile_header.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;
  bool showProfilePic;

  MainAppBar({
    this.themeColor = AppColors.MAIN_COLOR,
    this.showProfilePic = true,
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60);
}

class MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
     //centerTitle: true,
      title: GestureDetector(
        onTap: (){
          //  Navigator.of(context)
          //'/categorylistpage'
       Utils.mainAppNav.currentState.popUntil((route) => route.settings.name=='/mainpage');
        },
        child: Center(
          child: IconFont(
           iconName: IconFontHelper.LOGO,
            color: widget.themeColor,
            size: 40,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: widget.themeColor),
      actions: [
        //TODO:: Image Of Profile User
        UserProfileHeader(
          showProfilePic:widget.showProfilePic ,
        )
      ],
    );
  }
}
