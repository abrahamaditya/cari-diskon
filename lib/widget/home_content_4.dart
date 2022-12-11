import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/widget/card_v4.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeContent4(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    height: Sizes.dp50(context) + Sizes.dp20(context),
    //width: Sizes.dp40(context) + Sizes.dp4(context),
    //width: Sizes.dp94(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: Sizes.dp10(context)),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Yuk, intip berbagai pilihan Menu dan Brand andalan CariDiskon!",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Sizes.dp4(context)),
            Row(
              children: [
                //cardV4(context, "assets/logo/gojek.png"),
                Container(
                  padding: EdgeInsets.all(Sizes.dp2(context)),
                  height: Sizes.dp48(context) + Sizes.dp16(context),
                  width: Sizes.dp58(context) + Sizes.dp6(context),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                    image: DecorationImage(
                      image: AssetImage("assets/image/image.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                    onTap: () {},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Laper?",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: white,
                              fontSize: Sizes.dp7(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          "Ambil promomu",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: white,
                              fontSize: Sizes.dp7(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Text(
                          "sekarang!",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: white,
                              fontSize: Sizes.dp7(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: Sizes.dp14(context)),
                Column(
                  children: [
                    Row(
                      children: [
                        cardV4(context, "assets/logo/full/mcd.png", "8"),
                        SizedBox(width: Sizes.dp6(context)),
                        cardV4(context, "assets/logo/full/kfc.png", "7"),
                      ],
                    ),
                    SizedBox(height: Sizes.dp5(context)),
                    Row(
                      children: [
                        cardV4(context, "assets/logo/full/starbucks.png", "14"),
                        SizedBox(width: Sizes.dp6(context)),
                        cardV4(context, "assets/logo/full/pizzahut.png", "10"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
