import 'package:caridiskon/BLoC/login_BLoC.dart';
import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/account.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/tukar_poin_content_1.dart';
import 'package:caridiskon/widget/tukar_poin_content_2.dart';
import 'package:caridiskon/widget/tukar_poin_content_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class TukarPoinPage extends StatelessWidget {
  TukarPoinPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => FilterTukarPoinName()),
          BlocProvider(create: (_) => FilterTukarPoinResult()),
          BlocProvider(create: (_) => DetailTukarPoinPenawaran()),
          BlocProvider(create: (_) => FilterTukarPoinResultLength()),
          BlocProvider(create: (_) => FilterTukarPoinButton()),
          BlocProvider(create: (_) => FilterTukarPoinAble()),
          BlocProvider(create: (_) => FilterTukarPoinMasaBerlaku()),
          BlocProvider(create: (_) => FilterTukarPoinPenilaian()),
          BlocProvider(create: (_) => FilterTukarPoinTipe()),
          BlocProvider(create: (_) => FilterTukarPoinKategori()),
          BlocProvider(create: (_) => FilterTukarPoinToko()),
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
              tukarPoinPageView(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget tukarPoinPageView(BuildContext context) {
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tukar Poin",
                        textAlign: TextAlign.start,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                            color: black,
                            fontSize: Sizes.dp7(context),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      LoginStatus == true
                          ? Text(
                              "Sisa Poin: " + accountAuthorized!.poin,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  color: lightGrey,
                                  fontSize: Sizes.dp5(context),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                    ],
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
              tukarPoinContent1(context),
              SizedBox(width: Sizes.dp10(context)),
              Column(
                children: [
                  tukarPoinContent2(context),
                  SizedBox(height: Sizes.dp1(context)),
                  tukarPoinContent3(context),
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
