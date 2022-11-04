import 'package:caridiskon/BLoC/top_20_penawaran_page/detail_penawaran_page_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/detail_penawaran_content_1.dart';
import 'package:caridiskon/widget/detail_penawaran_content_2.dart';
import 'package:caridiskon/widget/detail_penawaran_content_3.dart';
import 'package:caridiskon/widget/detail_penawaran_content_4.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPenawaranPage extends StatelessWidget {
  DetailPenawaranPage({super.key, required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => DetailPenawaran()),
          BlocProvider(create: (_) => FilterSuka()),
          BlocProvider(create: (_) => FilterWaktu()),
          BlocProvider(create: (_) => FilterNameDetail()),
          BlocProvider(create: (_) => FilterResultDetail()),
          BlocProvider(create: (_) => FilterResultDetailLength()),
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
              BlocBuilder<DetailPenawaran, Top20Penawaran>(
                builder: (context, state) {
                  return blocBuilderFunction(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget blocBuilderFunction(BuildContext context) {
    BlocProvider.of<DetailPenawaran>(context).add(id);
    return BlocBuilder<DetailPenawaran, Top20Penawaran>(
      builder: (context, state) {
        return detailPenawaranPageView(context, state);
      },
    );
  }

  Widget detailPenawaranPageView(BuildContext context, Top20Penawaran data) {
    BlocProvider.of<DetailPenawaran>(context).add(id);
    return SingleChildScrollView(
      child: Column(
        children: [
          AppNavigationBar(),
          promoBar(context),
          SizedBox(height: Sizes.dp10(context)),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: Sizes.dp10(context)),
              detailPenawaranContent1(context, data),
              detailPenawaranContent2(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailPenawaranContent3(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailPenawaranContent4(context, data, int.parse(id)),
            ],
          ),
          SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
