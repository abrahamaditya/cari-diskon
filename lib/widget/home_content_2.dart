import 'package:caridiskon/data/promo_trending.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/widget/card_v2.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homeContent2(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    height: Sizes.dp40(context) + Sizes.dp10(context),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Promo dan Diskon yang sedang Trending!",
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
            SizedBox(height: Sizes.dp4(context)),
            Container(
              height: Sizes.dp30(context) + Sizes.dp6(context),
              width: Sizes.dp94(context) - Sizes.dp36(context),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: promosTrending.length,
                itemBuilder: (BuildContext context, int index) {
                  return cardV2(
                    id: promosTrending[index].id,
                    name: promosTrending[index].name,
                    subname: promosTrending[index].subname,
                    description1: promosTrending[index].description1,
                    description2: promosTrending[index].description2,
                    description3: promosTrending[index].description3,
                    brand: promosTrending[index].brand,
                    type: promosTrending[index].type,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
