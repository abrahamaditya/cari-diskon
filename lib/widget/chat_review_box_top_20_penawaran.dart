import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/semua_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ChatReviewBoxTop20Penawaran extends StatelessWidget {
  final int i;
  final int index;
  final String name;
  final String comment;
  final String date;
  String likes;
  final String rating;
  ChatReviewBoxTop20Penawaran({
    required this.i,
    required this.index,
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
                  BlocBuilder<SukaButtonTop20, String>(
                    builder: (context, state) {
                      return Text(
                        semuapenawaran[i].review[index].likes + " Suka",
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp3(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: Sizes.dp2(context)),
                  BlocBuilder<SukaButtonTop20, String>(
                    builder: (context, state) {
                      if (LoginStatus != false) {
                        return semuapenawaran[i].review[index].likeButton ==
                                false
                            ? InkWell(
                                onTap: () {
                                  likes = (int.parse(likes) + 1).toString();
                                  semuapenawaran[i].review[index].likes = likes;
                                  semuapenawaran[i].review[index].likeButton =
                                      true;
                                  BlocProvider.of<SukaButtonTop20>(context)
                                      .add("Liked!");
                                },
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Icon(
                                  Icons.thumb_up_alt_outlined,
                                  size: Sizes.dp5(context),
                                  color: black,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  likes = (int.parse(likes) - 1).toString();
                                  semuapenawaran[i].review[index].likes = likes;
                                  semuapenawaran[i].review[index].likeButton =
                                      false;
                                  BlocProvider.of<SukaButtonTop20>(context)
                                      .add("Cancel");
                                },
                                highlightColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                child: Icon(
                                  Icons.thumb_up_alt,
                                  size: Sizes.dp5(context),
                                  color: black,
                                ),
                              );
                      } else {
                        return InkWell(
                          onTap: () {
                            Application.router.navigateTo(
                              context,
                              "/login",
                            );
                          },
                          highlightColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Icon(
                            Icons.thumb_up_alt_outlined,
                            size: Sizes.dp5(context),
                            color: black,
                          ),
                        );
                      }
                    },
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
