import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV10 extends StatelessWidget {
  final String id;
  final String name;
  final String amount;
  final String brand;
  final String deadline;
  final String type;
  final String rating;
  final String totalRating;
  cardV10({
    required this.id,
    required this.name,
    required this.amount,
    required this.brand,
    required this.deadline,
    required this.type,
    required this.rating,
    required this.totalRating,
  });

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   width: Sizes.dp10(context),
    //   height: Sizes.dp10(context),
    //   color: blue,
    //   child: Text("tes"),
    // );
    return SizedBox(
      width: Sizes.dp40(context),
      height: Sizes.dp50(context),
      child: InkWell(
        onTap: () {
          Application.router.navigateTo(
            context,
            "/semuapenawaran/$id",
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: yellow,
              height: Sizes.dp12(context),
              width: Sizes.dp40(context) + Sizes.dp1(context),
              padding: EdgeInsets.symmetric(horizontal: Sizes.dp6(context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    type.toUpperCase(),
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: type == "Diskon" ? green : red,
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
                        " " + deadline,
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
            SizedBox(height: Sizes.dp1(context)),
            Text(
              brand,
              style: GoogleFonts.inter(
                textStyle: TextStyle(
                  color: black,
                  fontSize: Sizes.dp4(context),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Row(
              children: [
                RatingBar.builder(
                  initialRating: double.parse(rating),
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
                SizedBox(width: Sizes.dp1(context)),
                Text(
                  "(" + totalRating + " Penilaian" + ")",
                  textAlign: TextAlign.start,
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
            SizedBox(height: Sizes.dp2(context)),
            Text(
              name,
              textAlign: TextAlign.start,
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
    );
  }
}
