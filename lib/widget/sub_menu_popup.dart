import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget categoryMenu(BuildContext context, double x, double y) {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        Sizes.dp4(context),
      ),
    ),
    elevation: 3,
    backgroundColor: white,

    // POSITIONING 1 (with inset padding)
    // note: uncomment line 22-27
    // insetPadding: EdgeInsets.only(
    //   top: Sizes.dp8(context),
    //   bottom: Sizes.dp50(context) + Sizes.dp10(context),
    //   left: Sizes.dp80(context) + Sizes.dp50(context) + Sizes.dp12(context),
    //   right: Sizes.dp12(context),
    // ),

    // POSITIONING 2 (with alignment)
    // note: uncomment line 31-41 & 208
    insetPadding: EdgeInsets.zero,
    alignment: Alignment(x, y),
    // Alignment second approach
    // alignment: Alignment(MediaQuery.of(context).size.width * 0.00072,
    //     -MediaQuery.of(context).size.height * 0.0011),
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: Sizes.dp50(context),
        maxWidth: Sizes.dp58(context) + Sizes.dp40(context),
      ),
      child: Padding(
        padding: EdgeInsets.all(Sizes.dp8(context)),
        child: SingleChildScrollView(
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kategori",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.dp8(context)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[0]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Elektronik",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[1]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Fashion",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[2]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Kesehatan",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[3]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Makanan & Minuman",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: Sizes.dp10(context)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[4]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Olahraga",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[5]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Perawatan Tubuh",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context,
                                  "/kategori/${kategoriFilterData[6]}");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Transportasi",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router
                                  .navigateTo(context, "/semuapenawaran");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Lihat semua penawaran",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: blue,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(width: Sizes.dp8(context)),
              // VerticalDivider(
              //   thickness: 1.3,
              //   //indent: 30.0,
              //   //endIndent: 30.0,
              //   color: grey,
              // ),
              Container(
                height: Sizes.dp33(context),
                //padding: EdgeInsets.all(Sizes.dp6(context)),
                child: VerticalDivider(
                  color: lightGrey,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  width: 20,
                ),
              ),
              SizedBox(width: Sizes.dp8(context)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Toko Online",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.dp8(context)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/4",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Gojek",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/5",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Grab",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/15",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Tokopedia",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/16",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Traveloka",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: Sizes.dp8(context)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/1",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Bukalapak",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(
                                context,
                                "/toko/12",
                              );
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Shopee",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp5(context)),
                          InkWell(
                            onTap: () {
                              Application.router.navigateTo(context, "/toko");
                            },
                            child: Container(
                              color: white,
                              child: Text(
                                "Lihat semua toko",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: blue,
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w400,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
