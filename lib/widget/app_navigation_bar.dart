import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/sub_menu_popup.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:caridiskon/widget/sub_menu_profile_popup.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class AppNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: yellow,
      height: Sizes.dp24(context),
      padding: EdgeInsets.symmetric(horizontal: Sizes.dp8(context)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Application.router.navigateTo(context, "/");
                },
                splashColor: Colors.white,
                child: Container(
                  height: Sizes.dp12(context),
                  width: Sizes.dp40(context),
                  child: Image.asset(
                    "./logo/caridiskon.png",
                  ),
                ),
              ),
              SizedBox(width: Sizes.dp2(context)),
              InkWell(
                onTap: () {
                  Application.router.navigateTo(context, "/top20penawaran");
                },
                child: Text(
                  "Top 20 Penawaran",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: grey,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: Sizes.dp8(context)),
              InkWell(
                onTap: () {
                  Application.router.navigateTo(context, "/tukarpoin");
                },
                child: Text(
                  "Tukar Poin",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: grey,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(width: Sizes.dp8(context)),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierColor: null,
                    builder: (BuildContext context) =>
                        categoryMenu(context, 0.40, -0.75),
                  );
                },
                child: Text(
                  "Kategori",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: grey,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Searchbar(),
                ],
              ),
              SizedBox(width: Sizes.dp8(context)),
              LoginStatus == true
                  ? InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          barrierColor: null,
                          builder: (BuildContext context) =>
                              profileMenu(context, 0.91, -0.75),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "Hi! ",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp4(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Text(
                            accountAuthorized!.name.split(' ').first,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp4(context),
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        Application.router.navigateTo(context, "/login");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: orange,
                          border: Border.all(),
                          borderRadius:
                              BorderRadius.circular(Sizes.dp1(context)),
                        ),
                        height: Sizes.dp8(context),
                        width: Sizes.dp20(context),
                        child: Text(
                          "Masuk",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(color: black),
                            fontSize: Sizes.dp4(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
              SizedBox(width: Sizes.dp8(context)),
            ],
          ),
        ],
      ),
    );
  }
}
