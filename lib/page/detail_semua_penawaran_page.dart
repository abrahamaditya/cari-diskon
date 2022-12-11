import 'package:caridiskon/BLoC/rating_BLoC.dart';
import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/BLoC/tukar_poin_BLoC.dart';
import 'package:caridiskon/data/semua_penawaran.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:caridiskon/widget/app_navigation_bar.dart';
import 'package:caridiskon/widget/detail_semua_penawaran_content_1.dart';
import 'package:caridiskon/widget/detail_semua_penawaran_content_2.dart';
import 'package:caridiskon/widget/detail_semua_penawaran_content_3.dart';
import 'package:caridiskon/widget/detail_semua_penawaran_content_4.dart';
import 'package:caridiskon/widget/footer.dart';
import 'package:caridiskon/widget/promo_bar.dart';
import 'package:caridiskon/widget/text_comment_field_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailAllPenawaranPage extends StatelessWidget {
  DetailAllPenawaranPage({super.key, required this.id});
  String id;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920, 1080),
      builder: (BuildContext context, Widget? child) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => DetailAllPenawaran()),
          BlocProvider(create: (_) => FilterAllSuka()),
          BlocProvider(create: (_) => FilterAllWaktu()),
          BlocProvider(create: (_) => FilterAllNameDetail()),
          BlocProvider(create: (_) => FilterAllResultDetail()),
          BlocProvider(create: (_) => FilterAllResultDetailLength()),
          BlocProvider(create: (_) => SukaButtonAll()),
          BlocProvider(create: (_) => SukaKeyButtonAll()),
          BlocProvider(create: (_) => TukarPoinContainer()),
          BlocProvider(create: (_) => RatingInput()),
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
              BlocBuilder<DetailAllPenawaran, SemuaPenawaran>(
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
    BlocProvider.of<DetailAllPenawaran>(context).add(id);
    return BlocBuilder<DetailAllPenawaran, SemuaPenawaran>(
      builder: (context, state) {
        return detailAllPenawaranPageView(context, state);
      },
    );
  }

  Widget detailAllPenawaranPageView(BuildContext context, SemuaPenawaran data) {
    BlocProvider.of<DetailAllPenawaran>(context).add(id);
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
              detailAllPenawaranContent1(context, data),
              detailAllPenawaranContent2(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailAllPenawaranContent3(context, data),
              SizedBox(height: Sizes.dp4(context)),
              detailAllPenawaranContent4(context, data, int.parse(id)),
            ],
          ),
          SizedBox(height: Sizes.dp12(context)),
        ],
      ),
    );
  }
}
