import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/login_regist_filler.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1920, 1080),
        builder: (BuildContext context, Widget? child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: FooterView(
              flex: 10,
              footer: Footer(
                child: FooterWidget(),
                padding: EdgeInsets.zero,
              ),
              children: [loginPageView(context)],
            ),
          );
        });
  }

  Widget loginPageView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        AppNavigationBar(),
        promoBar(context),
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.dp20(context),
                vertical: Sizes.dp10(context),
              ),
              width: Sizes.dp60(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: Sizes.dp5(context)),
                    child: Text(
                      "Masuk",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: teal,
                          fontSize: Sizes.dp10(context),
                          fontWeight: FontWeight.w600,
                        )
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: Sizes.dp5(context)),
                    child: Text(
                      "Masuk dan cari penawaran sambil mengumpulkan poinmu!",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: black,
                        )
                      ),
                    ),
                  ),
                  //Input widgets
                ],
              ),
            ),
            loginRegistFiller(),
          ],
        )
      ],
    ));
  }
}
