import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/search_bar.dart';
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
            onTap: () {},
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
            onTap: () {},
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
          SizedBox(width: Sizes.dp56(context) + Sizes.dp18(context)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Searchbar(),
            ],
          ),
          SizedBox(width: Sizes.dp8(context)),
          InkWell(
            onTap: () {
              Application.router.navigateTo(context, "/login");
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: orange,
                border: Border.all(),
                borderRadius: BorderRadius.circular(Sizes.dp1(context)),
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
        ],
      ),
    );
  }
}
