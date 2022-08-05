import 'package:flutter/material.dart';
import 'package:roman/helper/colors.dart';
import 'package:roman/helper/utils.dart';
import 'package:roman/model/onboarding.dart';
import 'package:roman/pages/categorylistpage.dart';
import 'package:roman/widget/main_app_bar.dart';
import 'package:roman/widget/theme_buttom.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnBoarding> content = Utils.getOnboarding();
  int pageIndex = 0;
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              //TODO :: PAGE VIEW
              child: PageView(
                controller: controller,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                  content.length,
                  (index) => Container(
                    padding: EdgeInsets.all(40),
                    margin: EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.MAIN_COLOR.withOpacity(.3),
                          blurRadius: 20,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        //TODO:: IMAGED OF ONBOARDING
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                  'assets/images/${content[index].img}.png'),
                              Text(
                                content[index].message,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        //TODO:: BUTTON Enter Now
                        Visibility(
                          visible: index == content.length - 1,
                          child: ThemeButton(
                            label: "Enter Now",
                            color: AppColors.DARK_GREEN,
                            highlight: AppColors.DARK_GREEN,
                            onClick: () {
                              Utils.mainAppNav.currentState
                                  .pushNamed('/mainpage');
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             CategoryListPage()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //TODO CIRCLE INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                content.length,
                (index) => GestureDetector(
                  onTap: () {
                    controller.animateTo(
                        MediaQuery.of(context).size.width * index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.MAIN_COLOR,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 6,
                          color: pageIndex == index
                              ? Color(0xFFC1E09E)
                              : Theme.of(context).canvasColor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //TODO ::BUTTON Jump Onboarding
            ThemeButton(
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryListPage(),
                  ),
                );
              },
              label: "Jump Onboarding",
            ),
          ],
        ),
      ),
    );
  }
}
