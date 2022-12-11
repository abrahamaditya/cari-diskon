import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV2 extends StatelessWidget {
  final String id;
  final String name;
  final String subname;
  final String description1;
  final String? description2;
  final String? description3;
  final String brand;
  final String type;
  cardV2({
    required this.id,
    required this.name,
    required this.subname,
    required this.description1,
    this.description2,
    this.description3,
    required this.brand,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.dp50(context) + Sizes.dp8(context),
      //height: Sizes.dp36(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
          side: BorderSide(
            color: grey,
          ),
        ),
        elevation: 0,
        child: InkWell(
          borderRadius: BorderRadius.circular(Sizes.dp2(context)),
          onTap: () {
            Application.router.navigateTo(
              context,
              "/trending/$id",
            );
          },
          child: Container(
              padding: EdgeInsets.all(Sizes.dp2(context)),
              height: Sizes.dp12(context),
              width: Sizes.dp40(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: type == "kode" ? red : green,
                          //border: Border.all(),
                          borderRadius:
                              BorderRadius.circular(Sizes.dp1(context)),
                        ),
                        height: Sizes.dp8(context),
                        width: Sizes.dp25(context),
                        child: type == "kode"
                            ? Text(
                                "AMBIL KODENYA",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: white),
                                  fontSize: Sizes.dp2(context),
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            : Text(
                                "DISKON",
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(color: white),
                                  fontSize: Sizes.dp2(context),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.dp1(context)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: Sizes.dp24(context),
                        child: Image.asset(
                          brand,
                          fit: BoxFit.cover,
                        ),
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
                                fontSize: Sizes.dp5(context),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          //SizedBox(height: Sizes.dp1(context)),
                          Text(
                            subname,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: black,
                                fontSize: Sizes.dp3(context),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp1(context)),
                          Text(
                            "• " + description1,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: grey,
                                fontSize: Sizes.dp2(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "• " + description2!,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: grey,
                                fontSize: Sizes.dp2(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            "• " + description3!,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: grey,
                                fontSize: Sizes.dp2(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
