import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:google_fonts/google_fonts.dart';

class cardV3 extends StatelessWidget {
  final String id;
  final String name;
  final String subname;
  final String description1;
  final String? description2;
  final String? description3;
  final String brand;
  final String type;
  final String image;
  cardV3({
    required this.id,
    required this.name,
    required this.subname,
    required this.description1,
    this.description2,
    this.description3,
    required this.brand,
    required this.type,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.dp50(context) + Sizes.dp5(context),
      //height: Sizes.dp36(context),
      child: Card(
        clipBehavior: Clip.hardEdge,
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
            // Application.router.navigateTo(
            //   context,
            //   "/ekslusif/$id",
            // );
          },
          child: Container(
            //padding: EdgeInsets.all(Sizes.dp2(context)),
            height: Sizes.dp12(context),
            width: Sizes.dp40(context),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(Sizes.dp2(context)),
                  height: Sizes.dp40(context),
                  width: Sizes.dp40(context),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
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
                            color: white,
                            fontSize: Sizes.dp3(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: Sizes.dp4(context)),
                      Text(
                        description1,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp2(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        description2!,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp2(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        description3!,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: white,
                            fontSize: Sizes.dp2(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //SizedBox(width: Sizes.dp1(context)),
                Container(
                  padding: EdgeInsets.all(Sizes.dp2(context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //mainAxisAlignment: MainAxisAlignment.center,
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
                      SizedBox(height: Sizes.dp4(context)),
                      Container(
                        width: Sizes.dp24(context),
                        child: Image.asset(
                          brand,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
