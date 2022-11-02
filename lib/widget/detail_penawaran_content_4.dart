import 'package:caridiskon/BLoC/top_20_penawaran_page/detail_penawaran_page_BLoC.dart';
import 'package:caridiskon/BLoC/top_20_penawaran_page/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/helper/color.dart';
import 'package:caridiskon/helper/page_routing/application.dart';
import 'package:caridiskon/widget/card.dart';
import 'package:caridiskon/widget/chat_review_box.dart';
import 'package:caridiskon/widget/filter.dart';
import 'package:caridiskon/widget/search_bar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:dropdown_plus/dropdown_plus.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_breadcrumb/flutter_breadcrumb.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'dart:html' as html;

Widget detailPenawaranContent4(
    BuildContext context, Top20Penawaran data, int index) {
  return BlocBuilder<FilterResultDetail, List<Top20Penawaran>>(
    builder: (context, result) {
      return BlocBuilder<FilterNameDetail, String>(
        builder: (context, filter) {
          if (filter == "Waktu") {
            return BlocBuilder<FilterWaktu, String>(
              builder: (context, state) {
                return resultFilterWaktu(context, state, result, index);
              },
            );
          }
          if (filter == "Suka") {
            return BlocBuilder<FilterSuka, String>(
              builder: (context, state) {
                return resultFilterSuka(context, state, result, index);
              },
            );
          }
          return defaultResult(context, index);
        },
      );
    },
  );
}

Widget defaultResult(BuildContext context, int i) {
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: top20penawaran[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterResultDetail>(context).add(top20penawaran);
        return ChatReviewBox(
          name: top20penawaran[i].review[index].name,
          comment: top20penawaran[i].review[index].comment,
          date: top20penawaran[i].review[index].date,
          likes: top20penawaran[i].review[index].likes,
          rating: top20penawaran[i].review[index].rating,
        );
      },
    ),
  );
}

Widget resultFilterSuka(
    BuildContext context, String state, List<Top20Penawaran> result, int i) {
  int defaultIndex = i;
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: result[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "best") {
          result[i].review.sort(((a, b) => b.likes.compareTo(a.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBox(
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        } else if (state == "worst") {
          result[i].review.sort(((a, b) => a.likes.compareTo(b.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBox(
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}

Widget resultFilterWaktu(
    BuildContext context, String state, List<Top20Penawaran> result, int i) {
  int defaultIndex = i;
  return Container(
    height: Sizes.dp50(context),
    width: Sizes.dp80(context) + Sizes.dp14(context),
    child: ListView.builder(
      itemCount: result[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "latest") {
          result[i].review.sort(((a, b) => b.date.compareTo(a.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBox(
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        } else if (state == "farthest") {
          result[i].review.sort(((a, b) => a.date.compareTo(b.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBox(
            name: top20penawaran[i].review[index].name,
            comment: top20penawaran[i].review[index].comment,
            date: top20penawaran[i].review[index].date,
            likes: top20penawaran[i].review[index].likes,
            rating: top20penawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}
