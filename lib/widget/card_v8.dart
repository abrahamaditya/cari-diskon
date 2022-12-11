import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV8 extends StatelessWidget {
  final String id;
  final String brand;
  final String image;
  final String rating;
  final String totalRating;
  cardV8({
    required this.id,
    required this.brand,
    required this.image,
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
      height: Sizes.dp36(context),
      child: InkWell(
        onTap: () {
          Application.router.navigateTo(
            context,
            "/toko/$id",
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: Sizes.dp28(context),
              width: Sizes.dp40(context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(Sizes.dp1(context)),
                ),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
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
                  "(" + totalRating + " Total" + " Penilaian" + ")",
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
          ],
        ),
      ),
    );
  }
}
