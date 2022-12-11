import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/sub_menu_popup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.dp54(context) + Sizes.dp8(context),
      color: yellow,
      // decoration: BoxDecoration(
      //   gradient: RadialGradient(
      //     center: Alignment.bottomCenter,
      //     stops: [
      //       0.1,
      //       0.2,
      //       0.9,
      //     ],
      //     colors: [
      //       Color.fromARGB(255, 188, 227, 227),
      //       Color.fromARGB(255, 195, 229, 226),
      //       yellow,
      //     ],
      //   ),
      // ),

      // decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //         begin: Alignment.centerLeft,
      //         end: Alignment.centerRight,
      //         colors: [Colors.purple, Colors.blue])),
      padding: EdgeInsets.only(
          left: Sizes.dp12(context),
          right: Sizes.dp12(context),
          top: Sizes.dp8(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: Sizes.dp10(context)),
          InkWell(
            onTap: () {},
            splashColor: white,
            child: Container(
              height: Sizes.dp12(context),
              width: Sizes.dp40(context),
              child: Image.asset(
                "./logo/caridiskon.png",
              ),
            ),
          ),
          SizedBox(height: Sizes.dp7(context)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: Text(
                          "Website",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp7(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(context, "/");
                          },
                          child: Text(
                            "Home",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router
                                .navigateTo(context, "/top20penawaran");
                          },
                          child: Text(
                            "Top 20 Penawaran",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: true,
                              barrierColor: null,
                              builder: (BuildContext context) =>
                                  categoryMenu(context, -0.82, 0.35),
                            );
                          },
                          child: Text(
                            "Kategori",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Sizes.dp25(context)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: Text(
                          "Promo dan Voucher",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp7(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router
                                .navigateTo(context, "/semuapenawaran");
                          },
                          child: Text(
                            "Semua",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                                context, "/kategori/${kategoriFilterData[3]}");
                          },
                          child: Text(
                            "Makanan & Minuman",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                                context, "/kategori/${kategoriFilterData[6]}");
                          },
                          child: Text(
                            "Transportasi",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Sizes.dp25(context)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: Text(
                          "Partner Kami",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp7(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                              context,
                              "/toko/12",
                            );
                          },
                          child: Text(
                            "Shopee",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                              context,
                              "/toko/15",
                            );
                          },
                          child: Text(
                            "Tokopedia",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                              context,
                              "/toko/16",
                            );
                          },
                          child: Text(
                            "Traveloka",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp2(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(context, "/toko");
                          },
                          child: Text(
                            "Lihat semua",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Sizes.dp25(context)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: Text(
                          "Help Centre",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp4(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp7(context)),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Sizes.dp8(context)),
                        child: InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                              context,
                              "/contactus",
                            );
                          },
                          child: Text(
                            "Contact Us",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: Sizes.dp14(context)),
          Container(
            padding: EdgeInsets.only(left: Sizes.dp8(context)),
            child: Text(
              "© 2022 CariDiskon, Inc. All Rights Reserved.",
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp3(context),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
