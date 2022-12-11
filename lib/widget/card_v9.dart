import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV9 extends StatelessWidget {
  final String id;
  final String name;
  final String amount;
  final String brand;
  final String deadline;
  final String type;
  final String? rating;
  cardV9({
    required this.id,
    required this.name,
    required this.amount,
    required this.brand,
    required this.deadline,
    required this.type,
    this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.dp60(context),
      height: Sizes.dp33(context) + Sizes.dp8(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
        ),
        elevation: 0,
        child: Container(
          height: Sizes.dp12(context),
          width: Sizes.dp40(context),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.dp2(context)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                orangeGradient,
                yellowGradient,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: yellow,
                height: Sizes.dp8(context),
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
              Row(
                children: [
                  SizedBox(width: Sizes.dp2(context)),
                  Container(
                    //color: Colors.amber,
                    padding: EdgeInsets.only(
                        top: Sizes.dp4(context), left: Sizes.dp8(context)),
                    width: Sizes.dp48(context) +
                        Sizes.dp48(context) +
                        Sizes.dp36(context),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: Sizes.dp4(context)),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: amount,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: red,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: " - ",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: name,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    color: black,
                                    fontSize: Sizes.dp6(context),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: Sizes.dp4(context)),
                        Text(
                          "* Syarat dan ketentuan berlaku",
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: red,
                              fontSize: Sizes.dp3(context),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                //color: Colors.amber,
                alignment: Alignment.bottomRight,
                width: Sizes.dp59(context) + Sizes.dp24(context),
                child: InkWell(
                  borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                  onTap: () {
                    Application.router.navigateTo(
                      context,
                      "/semuapenawaran/$id",
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: pink,
                      //border: Border.all(),
                      borderRadius: BorderRadius.circular(Sizes.dp1(context)),
                    ),
                    height: Sizes.dp12(context),
                    width: Sizes.dp30(context),
                    child: Text(
                      type == "Kode" ? "Pakai Kode!" : "Lihat Detail",
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(color: white),
                        fontSize: Sizes.dp4(context),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
