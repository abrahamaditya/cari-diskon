import 'package:caridiskon/BLoC/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/top_20_penawaran_content_1.dart';
import 'package:caridiskon/widget/top_20_penawaran_content_2.dart';
import 'package:caridiskon/widget/top_20_penawaran_content_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class Top20PenawaranPage extends StatelessWidget {
  Top20PenawaranPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FilterTop20Name()),
          BlocProvider(create: (_) => FilterTop20Result()),
          BlocProvider(create: (_) => DetailTop20Penawaran()),
          BlocProvider(create: (_) => FilterTop20ResultLength()),
          BlocProvider(create: (_) => FilterTop20Button()),
          BlocProvider(create: (_) => FilterTop20Able()),
          BlocProvider(create: (_) => FilterTop20MasaBerlaku()),
          BlocProvider(create: (_) => FilterTop20Penilaian()),
          BlocProvider(create: (_) => FilterTop20Tipe()),
          BlocProvider(create: (_) => FilterTop20Kategori()),
          BlocProvider(create: (_) => FilterTop20Toko()),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: FooterView(
            flex: 10,
            footer: Footer(
              child: FooterWidget(),
              padding: EdgeInsets.zero,
            ),
            children: [
              top20PenawaranPageView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget top20PenawaranPageView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(width: Sizes.dp36(context) + Sizes.dp4(context)),
                  Text(
                    "Top 20 Penawaran",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                        color: black,
                        fontSize: Sizes.dp7(context),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: Sizes.dp10(context)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: Sizes.dp30(context)),
              top20PenawaranContent1(context),
              SizedBox(width: Sizes.dp10(context)),
              Column(
                children: [
                  top20PenawaranContent2(context),
                  SizedBox(height: Sizes.dp1(context)),
                  top20PenawaranContent3(context),
                ],
              ),
              SizedBox(width: Sizes.dp30(context)),
            ],
          ),
          SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
