import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/tukar_poin.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/detail_tukar_poin_content_1.dart';
import 'package:caridiskon/widget/detail_tukar_poin_content_2.dart';
import 'package:caridiskon/widget/detail_tukar_poin_content_3.dart';
import 'package:caridiskon/widget/detail_tukar_poin_content_4.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailTukarPoinPage extends StatelessWidget {
  DetailTukarPoinPage({super.key, required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => DetailTukarPoinPenawaran()),
          BlocProvider(create: (_) => FilterTukarPoinSuka()),
          BlocProvider(create: (_) => FilterTukarPoinWaktu()),
          BlocProvider(create: (_) => FilterTukarPoinNameDetail()),
          BlocProvider(create: (_) => FilterTukarPoinResultDetail()),
          BlocProvider(create: (_) => FilterTukarPoinResultDetailLength()),
          BlocProvider(create: (_) => SukaButtonTukarPoin()),
          BlocProvider(create: (_) => SukaKeyButtonTukarPoin()),
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
              BlocBuilder<DetailTukarPoinPenawaran, TukarPoin>(
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
    BlocProvider.of<DetailTukarPoinPenawaran>(context).add(id);
    return BlocBuilder<DetailTukarPoinPenawaran, TukarPoin>(
      builder: (context, state) {
        return detailTukarPoinPageView(context, state);
      },
    );
  }

  Widget detailTukarPoinPageView(BuildContext context, TukarPoin data) {
    BlocProvider.of<DetailTukarPoinPenawaran>(context).add(id);
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
              detailTukarPoinContent1(context, data),
              detailTukarPoinContent2(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailTukarPoinContent3(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailTukarPoinContent4(context, data, int.parse(id)),
            ],
          ),
          SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
