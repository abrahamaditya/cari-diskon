import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/data/toko.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/toko_content_1.dart';
import 'package:caridiskon/widget/toko_content_2.dart';
import 'package:caridiskon/widget/toko_content_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailTokoPage extends StatelessWidget {
  DetailTokoPage({super.key, required this.id});
  String id;
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
              detailTokoPageView(context, id),
            ],
          ),
        ),
      ),
    );
  }

  Widget detailTokoPageView(BuildContext context, String id) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: Sizes.dp36(context) + Sizes.dp4(context)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Semua Kode dan",
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
                        "Diskon ${toko[int.parse(id)].brand}",
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
                  SizedBox(width: Sizes.dp50(context) + Sizes.dp4(context)),
                  Container(
                    height: Sizes.dp30(context),
                    width: Sizes.dp40(context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(Sizes.dp1(context)),
                      ),
                      image: DecorationImage(
                        image: AssetImage(toko[int.parse(id)].logo),
                        fit: BoxFit.cover,
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
              tokoContent1(context, toko[int.parse(id)].brand),
              SizedBox(width: Sizes.dp10(context)),
              Column(
                children: [
                  tokoContent2(context),
                  SizedBox(height: Sizes.dp1(context)),
                  tokoContent3(context),
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
