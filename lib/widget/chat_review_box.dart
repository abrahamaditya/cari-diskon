import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ChatReviewBox extends StatelessWidget {
  final String name;
  final String comment;
  final String date;
  final String likes;
  final String rating;
  ChatReviewBox({
    required this.name,
    required this.comment,
    required this.date,
    required this.likes,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfilePicture(
            name: name,
            radius: Sizes.dp6(context),
            fontsize: Sizes.dp4(context),
          ),
          SizedBox(width: Sizes.dp2(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    color: black,
                    fontSize: Sizes.dp4(context),
                    fontWeight: FontWeight.w500,
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
                    itemSize: Sizes.dp2(context),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.black,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(width: Sizes.dp2(context)),
                  Text(
                    "( " + date + " )",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: lightGrey,
                        fontSize: Sizes.dp3(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.dp1(context)),
              Container(
                width: Sizes.dp60(context),
                child: Text(
                  comment,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp4(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Sizes.dp1(context)),
              Row(
                children: [
                  Text(
                    likes + " Suka",
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp3(context),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: Sizes.dp2(context)),
                  InkWell(
                    onTap: () {},
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: Sizes.dp5(context),
                      color: black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.dp5(context)),
            ],
          ),
        ],
      ),
    );
  }
}
