import 'package:caridiskon/data/toko.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/az_list.dart';
import 'package:caridiskon/widget/card_v8.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class SemuaTokoPage extends StatefulWidget {
  SemuaTokoPage({Key? key}) : super(key: key);

  @override
  _SemuaTokoPage createState() => _SemuaTokoPage();
}

class _SemuaTokoPage extends State<SemuaTokoPage> {
  final scrollDirection = Axis.vertical;
  late AutoScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
      viewportBoundaryGetter: () =>
          Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
      axis: scrollDirection,
    );
  }

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
            semuaTokoPageView(context, controller),
          ],
        ),
      ),
    );
  }

  Widget semuaTokoPageView(
      BuildContext context, AutoScrollController controller) {
    bool flag = false;
    int cursor = 1;
    int sectionCursor = 1;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Container(
            height: Sizes.dp94(context),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                horizontal: Sizes.dp36(context) + Sizes.dp8(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Toko",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      color: black,
                      fontSize: Sizes.dp7(context),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: Sizes.dp10(context)),
                Row(
                  children: [
                    Text(
                      top20penawaran.length.toString() + " ",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: lightGrey,
                          fontSize: Sizes.dp4(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      "Hasil",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        textStyle: TextStyle(
                          color: lightGrey,
                          fontSize: Sizes.dp4(context),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Sizes.dp10(context)),
                azList(context, controller),
                SizedBox(height: Sizes.dp20(context)),
                Container(
                  height: Sizes.dp80(context),
                  width: Sizes.dp80(context) + Sizes.dp14(context),
                  child: ListView.builder(
                    controller: controller,
                    itemCount: toko.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            toko[index].brand.characters.elementAt(0),
                            textAlign: TextAlign.start,
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: lightGrey,
                                fontSize: Sizes.dp5(context),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(height: Sizes.dp3(context)),
                          AutoScrollTag(
                            key: ValueKey(index),
                            controller: controller,
                            index: index,
                            highlightColor: Colors.black.withOpacity(0.1),
                            child: Container(
                              width: Sizes.dp40(context),
                              child: cardV8(
                                id: toko[index].id,
                                brand: toko[index].brand,
                                image: toko[index].framedLogo,
                                rating: toko[index].rating,
                                totalRating: toko[index].totalRating,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          //SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
