import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

import 'package:material_dialogs/material_dialogs.dart';

Widget detailPenawaranContent2(BuildContext context, Top20Penawaran data) {
  return Container(
    //color: Color.fromARGB(255, 201, 199, 199),
    //height: Sizes.dp59(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: Sizes.dp1(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Sizes.dp2(context)),
              height: Sizes.dp48(context) + Sizes.dp16(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                image: DecorationImage(
                  image: AssetImage(data.framedLogo),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(Sizes.dp8(context)),
              height: Sizes.dp48(context) + Sizes.dp16(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                image: DecorationImage(
                  image: AssetImage(data.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Lihat penawaran menarik lain",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: white,
                        fontSize: Sizes.dp7(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "dari",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        " " + data.brand,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        " di",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        " CariDiskon",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Text(
                        "!",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: Sizes.dp4(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: Sizes.dp56(context) + Sizes.dp22(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Syarat dan Ketentuan Promo:",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp6(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: Sizes.dp1(context)),
                  Text(
                    "- " + data.description1,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "- " + data.description2,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    "- " + data.description3,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Sizes.dp5(context)),
              height: Sizes.dp36(context) - Sizes.dp2(context),
              width: Sizes.dp56(context) + Sizes.dp22(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                border: Border.all(),
              ),
              child: data.type == "Diskon"
                  ? Column(
                      children: [
                        Text(
                          "Diskon ini tidak memiliki kode. Segera cek aplikasi atau website terkait untuk menikmati diskon!*",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp6(context),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {
                              //Application.router.navigateTo(context, "/test");
                              html.window.open(data.website, "Website");
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: white,
                                border: Border.all(),
                                borderRadius:
                                    BorderRadius.circular(Sizes.dp1(context)),
                              ),
                              height: Sizes.dp12(context),
                              width: Sizes.dp30(context),
                              child: Text(
                                "Cek Sekarang",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: green),
                                  fontSize: Sizes.dp4(context),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "*Syarat dan Ketentuan berlaku",
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
                    )
                  : Column(
                      children: [
                        Text(
                          "Gunakan kode berikut untuk mendapatkan promo*",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: black,
                              fontSize: Sizes.dp6(context),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: white,
                              border: Border.all(),
                              borderRadius:
                                  BorderRadius.circular(Sizes.dp1(context)),
                            ),
                            height: Sizes.dp14(context),
                            width: Sizes.dp40(context),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  data.code,
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(color: black),
                                    fontSize: Sizes.dp5(context),
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(width: Sizes.dp8(context)),
                                Text(
                                  "|",
                                  style: GoogleFonts.inter(
                                    textStyle: TextStyle(color: lightGrey),
                                    fontSize: Sizes.dp4(context),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(width: Sizes.dp4(context)),
                                InkWell(
                                  onTap: () {
                                    FlutterClipboard.copy(data.code).then(
                                      (value) => print("Copy Successful"),
                                    );
                                    Dialogs.materialDialog(
                                      color: Colors.white,
                                      title: 'Yey! Kode berhasil disalin!',
                                      titleStyle: GoogleFonts.inter(
                                        textStyle: TextStyle(
                                          color: black,
                                          fontSize: Sizes.dp5(context),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      lottieBuilder: Lottie.asset(
                                        './animation/successful-tick.json',
                                        frameRate: FrameRate(60),
                                        fit: BoxFit.contain,
                                        // height: Sizes.dp1(context),
                                        // width: Sizes.dp1(context),
                                      ),
                                      dialogWidth: kIsWeb ? 0.1 : null,
                                      context: context,
                                      // actions: [
                                      //   IconsButton(
                                      //     onPressed: () {
                                      //       Navigator.of(context).pop();
                                      //     },
                                      //     text: 'Tutup',
                                      //     iconData: Icons.done,
                                      //     color: Colors.blue,
                                      //     textStyle: TextStyle(color: Colors.white),
                                      //     iconColor: Colors.white,
                                      //   ),
                                      // ],
                                    );
                                  },
                                  child: Text(
                                    "Salin",
                                    style: GoogleFonts.inter(
                                      textStyle: TextStyle(color: green),
                                      fontSize: Sizes.dp4(context),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Sizes.dp4(context)),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "*Syarat dan Ketentuan berlaku",
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
            ),
          ],
        ),
        SizedBox(height: Sizes.dp6(context)),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text:
                    "Untuk syarat dan ketentuan selengkapnya silakan kunjungi website atau aplikasi ",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextSpan(
                text: data.brand,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              TextSpan(
                text:
                    ". Website CariDiskon tidak bertanggungjawab terhadap perubahan ataupun kesalahan yang disebabkan oleh kelalaian Toko ataupun Pengguna.",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
