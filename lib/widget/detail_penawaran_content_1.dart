import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Widget detailPenawaranContent1(BuildContext context, Top20Penawaran data) {
  return Container(
    alignment: Alignment.center,
    //color: Color.fromARGB(255, 201, 199, 199),
    //height: Sizes.dp59(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          data.brand,
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: black,
              fontSize: Sizes.dp7(context),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        SizedBox(height: Sizes.dp2(context)),
        Row(
          children: [
            Text(
              data.rating,
              textAlign: TextAlign.start,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(width: Sizes.dp1(context)),
            RatingBar.builder(
              initialRating: double.parse(data.rating),
              minRating: 0,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.zero,
              itemSize: Sizes.dp4(context),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.black,
              ),
              onRatingUpdate: (rating) {},
            ),
          ],
        ),
        Text(
          "dari " + data.totalRating + " penilaian",
          textAlign: TextAlign.start,
          style: GoogleFonts.inter(
            textStyle: TextStyle(
              color: black,
              fontSize: Sizes.dp5(context),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(height: Sizes.dp8(context)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: data.amount,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp6(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: " - ",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp6(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: data.name,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp6(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: yellow,
              height: Sizes.dp12(context),
              width: Sizes.dp40(context),
              padding: EdgeInsets.symmetric(horizontal: Sizes.dp6(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.type.toUpperCase(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: data.type == "Diskon" ? green : red,
                        fontSize: Sizes.dp3(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        size: Sizes.dp3(context),
                        color: red,
                      ),
                      Text(
                        " " + data.deadline,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(color: red),
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
