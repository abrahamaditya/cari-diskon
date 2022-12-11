import 'package:caridiskon/BLoC/semua_penawaran_BLoC.dart';
import 'package:caridiskon/data/semua_penawaran.dart';
import 'package:caridiskon/widget/chat_review_box_semua_penawaran.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget detailAllPenawaranContent4(
    BuildContext context, SemuaPenawaran data, int index) {
  return BlocBuilder<FilterAllResultDetail, List<SemuaPenawaran>>(
    builder: (context, result) {
      return BlocBuilder<FilterAllNameDetail, String>(
        builder: (context, filter) {
          if (filter == "Waktu") {
            return BlocBuilder<FilterAllWaktu, String>(
              builder: (context, state) {
                return resultFilterWaktu(context, state, result, index);
              },
            );
          }
          if (filter == "Suka") {
            return BlocBuilder<FilterAllSuka, String>(
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
      itemCount: semuapenawaran[i].review.length,
      itemBuilder: (BuildContext context, int index) {
        BlocProvider.of<FilterAllResultDetail>(context).add(semuapenawaran);
        return ChatReviewBoxSemuaPenawaran(
          i: i,
          index: index,
          name: semuapenawaran[i].review[index].name,
          comment: semuapenawaran[i].review[index].comment,
          date: semuapenawaran[i].review[index].date,
          likes: semuapenawaran[i].review[index].likes,
          rating: semuapenawaran[i].review[index].rating,
        );
      },
    ),
  );
}

Widget resultFilterSuka(
    BuildContext context, String state, List<SemuaPenawaran> result, int i) {
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
          BlocProvider.of<FilterAllResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterAllResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxSemuaPenawaran(
            i: i,
            index: index,
            name: semuapenawaran[i].review[index].name,
            comment: semuapenawaran[i].review[index].comment,
            date: semuapenawaran[i].review[index].date,
            likes: semuapenawaran[i].review[index].likes,
            rating: semuapenawaran[i].review[index].rating,
          );
        } else if (state == "worst") {
          result[i].review.sort(((a, b) => a.likes.compareTo(b.likes)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterAllResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterAllResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxSemuaPenawaran(
            i: i,
            index: index,
            name: semuapenawaran[i].review[index].name,
            comment: semuapenawaran[i].review[index].comment,
            date: semuapenawaran[i].review[index].date,
            likes: semuapenawaran[i].review[index].likes,
            rating: semuapenawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}

Widget resultFilterWaktu(
    BuildContext context, String state, List<SemuaPenawaran> result, int i) {
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
          BlocProvider.of<FilterAllResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterAllResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxSemuaPenawaran(
            i: i,
            index: index,
            name: semuapenawaran[i].review[index].name,
            comment: semuapenawaran[i].review[index].comment,
            date: semuapenawaran[i].review[index].date,
            likes: semuapenawaran[i].review[index].likes,
            rating: semuapenawaran[i].review[index].rating,
          );
        } else if (state == "farthest") {
          result[i].review.sort(((a, b) => a.date.compareTo(b.date)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterAllResultDetail>(context).add(filteredResult);
          BlocProvider.of<FilterAllResultDetailLength>(context)
              .add(filteredResult.length);
          return ChatReviewBoxSemuaPenawaran(
            i: i,
            index: index,
            name: semuapenawaran[i].review[index].name,
            comment: semuapenawaran[i].review[index].comment,
            date: semuapenawaran[i].review[index].date,
            likes: semuapenawaran[i].review[index].likes,
            rating: semuapenawaran[i].review[index].rating,
          );
        }
        return defaultResult(context, defaultIndex);
      },
    ),
  );
}
