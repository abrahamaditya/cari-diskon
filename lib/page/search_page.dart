import 'package:caridiskon/data/semua_penawaran.dart';
import 'package:caridiskon/data/toko.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/card_v8.dart';
import 'package:caridiskon/widget/card_v9.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_dialogs/material_dialogs.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key, required this.value});
  String value;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: FooterView(
          flex: 10,
          footer: Footer(
            child: FooterWidget(),
            padding: EdgeInsets.zero,
          ),
          children: [
            SearchPageView(context),
          ],
        ),
      ),
    );
  }

  Widget SearchPageView(BuildContext context) {
    int counterToko = 0;
    bool emitToko = false;
    toko.forEach(
      (element) {
        if (element.brand.toLowerCase().compareTo(value.toLowerCase()) == 0) {
          counterToko++;
        }
      },
    );
    if (counterToko != 0) {
      emitToko = true;
    }
    print(value);
    print("toko = $emitToko");
    int counterPenawaran = 0;
    bool emitPenawaran = false;
    semuapenawaran.forEach(
      (element) {
        if (element.name.toLowerCase().contains(value.toLowerCase()) == true) {
          counterPenawaran++;
        }
      },
    );
    if (counterPenawaran != 0) {
      emitPenawaran = true;
    }
    print("penawaran = $emitPenawaran");
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.dp36(context) + Sizes.dp8(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pencarian",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp7(context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  "\"" + value + "\"",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp5(context),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                emitToko == false && emitPenawaran == false
                    ? SizedBox.shrink()
                    : SizedBox(height: Sizes.dp10(context)),
                emitToko == false && emitPenawaran == false
                    ? Container(
                        height: Sizes.dp50(context),
                        width: Sizes.width(context),
                        child: Lottie.asset(
                          './animation/not-found.json',
                          frameRate: FrameRate(60),
                          fit: BoxFit.contain,
                        ),
                      )
                    : SizedBox.shrink(),
                emitToko == false && emitPenawaran == false
                    ? Center(
                        child: Text(
                          "Hasil Pencarian Tidak Ditemukan",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.inter(
                            textStyle: TextStyle(
                              color: lightGrey,
                              fontSize: Sizes.dp5(context),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                emitToko == true || emitPenawaran == true
                    ? Text(
                        "Hasil Pencarian",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: lightGrey,
                            fontSize: Sizes.dp4(context),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                SizedBox(height: Sizes.dp6(context)),
                emitToko == true
                    ? Text(
                        "Toko",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp4(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                emitToko == true
                    ? SizedBox(height: Sizes.dp2(context))
                    : SizedBox.shrink(),
                emitToko == true
                    ? Container(
                        height: Sizes.dp36(context),
                        width: Sizes.dp80(context) + Sizes.dp10(context),
                        child: ListView.builder(
                          itemCount: toko.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            if (toko[index]
                                    .brand
                                    .toLowerCase()
                                    .compareTo(value.toLowerCase()) ==
                                0) {
                              return Padding(
                                padding:
                                    EdgeInsets.only(right: Sizes.dp4(context)),
                                child: cardV8(
                                  id: toko[index].id,
                                  brand: toko[index].brand,
                                  image: toko[index].framedLogo,
                                  rating: toko[index].rating,
                                  totalRating: toko[index].totalRating,
                                ),
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          },
                        ),
                      )
                    : SizedBox.shrink(),
                emitToko == true
                    ? SizedBox(height: Sizes.dp6(context))
                    : SizedBox.shrink(),
                emitPenawaran == true
                    ? Text(
                        "Penawaran",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp4(context),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
                emitPenawaran == true
                    ? SizedBox(height: Sizes.dp2(context))
                    : SizedBox.shrink(),
                emitPenawaran == true
                    ? Container(
                        height: Sizes.dp59(context),
                        width: Sizes.dp60(context),
                        child: ListView.builder(
                          itemCount: semuapenawaran.length,
                          itemBuilder: (BuildContext context, int index) {
                            if (semuapenawaran[index]
                                    .name
                                    .toLowerCase()
                                    .contains(value.toLowerCase()) ==
                                true) {
                              return cardV9(
                                id: semuapenawaran[index].id,
                                name: semuapenawaran[index].name,
                                amount: semuapenawaran[index].amount,
                                brand: semuapenawaran[index].brand,
                                deadline: semuapenawaran[index].deadline,
                                type: semuapenawaran[index].type,
                                rating: semuapenawaran[index].rating,
                              );
                            } else {
                              return SizedBox.shrink();
                            }
                          },
                        ),
                      )
                    : SizedBox.shrink(),
              ],
            ),
          ),
          SizedBox(height: Sizes.dp8(context)),
          emitToko == false && emitPenawaran == false
              ? SizedBox(height: Sizes.dp14(context))
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
