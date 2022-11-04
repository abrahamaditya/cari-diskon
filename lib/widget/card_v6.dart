import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV6 extends StatelessWidget {
  final String id;
  final String name;
  final String amount;
  final String brand;
  final String logo;
  final String deadline;
  final String type;
  final String? rating;
  cardV6({
    required this.id,
    required this.name,
    required this.amount,
    required this.brand,
    required this.logo,
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
          side: BorderSide(
            color: grey,
          ),
        ),
        elevation: 0,
        child: Container(
          padding: EdgeInsets.all(Sizes.dp8(context)),
          height: Sizes.dp12(context),
          width: Sizes.dp40(context),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        type.toUpperCase(),
                        style: GoogleFonts.inter(
                          textStyle:
                              TextStyle(color: type == "Kode" ? red : green),
                          fontSize: Sizes.dp2(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.dp2(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Sizes.dp24(context),
                        child: Image.asset(
                          logo,
                        ),
                      ),
                      SizedBox(width: Sizes.dp5(context)),
                    ],
                  ),
                ],
              ),
              SizedBox(width: Sizes.dp2(context)),
              Container(
                //color: Colors.amber,
                width: Sizes.dp48(context) + Sizes.dp30(context),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
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
              SizedBox(width: Sizes.dp4(context)),
              Container(
                //color: Colors.amber,
                alignment: Alignment.bottomRight,
                width: Sizes.dp24(context) + Sizes.dp12(context),
                child: InkWell(
                  borderRadius: BorderRadius.circular(Sizes.dp2(context)),
                  onTap: () {
                    Application.router.navigateTo(
                      context,
                      "/top20penawaran/$id",
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
