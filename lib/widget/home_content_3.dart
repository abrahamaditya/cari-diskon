import 'package:caridiskon/data/promo_ekslusif.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/widget/card.dart';
import 'package:caridiskon/widget/card_v3.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeContent3(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    height: Sizes.dp40(context) + Sizes.dp16(context),
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
                        "Promo ",
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
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Eksklusif ",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "CariDiskon!!",
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
                    SizedBox(width: Sizes.dp48(context) + Sizes.dp33(context)),
                    Container(
                      color: orange,
                      height: Sizes.dp12(context),
                      width: Sizes.dp50(context) - Sizes.dp10(context),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: Sizes.dp3(context),
                            color: black,
                          ),
                          SizedBox(width: Sizes.dp1(context)),
                          Text(
                            "EKSLUSIF ",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Text(
                            "|  Cuma ada di CariDiskon lho!",
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: Sizes.dp4(context)),
            Container(
              height: Sizes.dp36(context),
              width: Sizes.dp94(context) - Sizes.dp36(context),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: promosEkslusif.length,
                itemBuilder: (BuildContext context, int index) {
                  return cardV3(
                    id: promosEkslusif[index].id,
                    name: promosEkslusif[index].name,
                    subname: promosEkslusif[index].subname,
                    description1: promosEkslusif[index].description1,
                    description2: promosEkslusif[index].description2,
                    description3: promosEkslusif[index].description3,
                    brand: promosEkslusif[index].brand,
                    type: promosEkslusif[index].type,
                    image: promosEkslusif[index].image,
                  );
                },
              ),
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     cardV3(context, "./logo/gojek.png"),
              //     cardV3(context, "./logo/gojek.png"),
              //     cardV3(context, "./logo/gojek.png"),
              //     cardV3(context, "./logo/gojek.png"),
              //   ],
              // ),
            ),
          ],
        ),
      ],
    ),
  );
}
