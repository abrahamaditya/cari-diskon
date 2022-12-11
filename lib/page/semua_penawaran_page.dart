import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/kategori_content_2.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/semua_penawaran_content_1.dart';
import 'package:caridiskon/widget/semua_penawaran_content_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class SemuaPenawaranPage extends StatelessWidget {
  SemuaPenawaranPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FilterAllName()),
          BlocProvider(create: (_) => FilterAllResult()),
          BlocProvider(create: (_) => DetailAllPenawaran()),
          BlocProvider(create: (_) => FilterAllResultLength()),
          BlocProvider(create: (_) => FilterAllButton()),
          BlocProvider(create: (_) => FilterAllAble()),
          BlocProvider(create: (_) => FilterAllMasaBerlaku()),
          BlocProvider(create: (_) => FilterAllPenilaian()),
          BlocProvider(create: (_) => FilterAllTipe()),
          BlocProvider(create: (_) => FilterAllKategori()),
          BlocProvider(create: (_) => FilterAllToko()),
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
              semuaPenawaranPageView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget semuaPenawaranPageView(BuildContext context) {
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
                    "Kode dan Diskon",
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
              semuaPenawaranContent1(context),
              SizedBox(width: Sizes.dp10(context)),
              Column(
                children: [
                  kategoriContent2(context),
                  SizedBox(height: Sizes.dp1(context)),
                  semuaPenawaranContent3(context),
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
