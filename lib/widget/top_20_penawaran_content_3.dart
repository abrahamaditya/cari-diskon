import 'package:caridiskon/BLoC/top_20_penawaran_page/top_20_penawaran_BLoC.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:caridiskon/widget/card_v6.dart';
import 'package:flutter/material.dart';
import 'package:caridiskon/helper/sizes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget top20PenawaranContent3(BuildContext context) {
  return BlocBuilder<FilterResult, List<Top20Penawaran>>(
    builder: (context, result) {
      return BlocBuilder<FilterName, String>(
        builder: (context, filter) {
          if (filter == "Masa Berlaku") {
            return BlocBuilder<FilterMasaBerlaku, String>(
              builder: (context, state) {
                return resultFilterMasaBerlaku(context, state, result);
              },
            );
          } else if (filter == "Penilaian") {
            return BlocBuilder<FilterPenilaian, String>(
              builder: (context, state) {
                return resultFilterPenilaian(context, state, result);
              },
            );
          } else if (filter == "Cari") {
            return BlocBuilder<FilterButton, List>(
              builder: (context, state) {
                // Single
                // Tipe | null | null
                if (state[0] != "null" &&
                    state[1] == "null" &&
                    state[2] == "null") {
                  return resultCariSingleTipe(context, state);
                }
                // null | Kategori | null
                else if (state[0] == "null" &&
                    state[1] != "null" &&
                    state[2] == "null") {
                  return resultCariSingleKategori(context, state);
                }
                // null | null | Toko
                else if (state[0] == "null" &&
                    state[1] == "null" &&
                    state[2] != "null") {
                  return resultCariSingleToko(context, state);
                }

                // Double
                // Tipe | Kategori | null
                else if (state[0] != "null" &&
                    state[1] != "null" &&
                    state[2] == "null") {
                  return resultCariDoubleTipeKategori(context, state);
                }
                // Tipe | null | Toko
                else if (state[0] != "null" &&
                    state[1] == "null" &&
                    state[2] != "null") {
                  return resultCariDoubleTipeToko(context, state);
                }
                // null | Kategori | Toko
                else if (state[0] == "null" &&
                    state[1] != "null" &&
                    state[2] != "null") {
                  return resultCariDoubleKategoriToko(context, state);
                } else {
                  return Text("waaaw");
                  //return SizedBox.shrink();
                }
              },
            );
          } else {
            return defaultResult(context);
          }
        },
      );
    },
  );
}

Widget defaultResult(BuildContext context) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
        itemCount: top20penawaran.length,
        itemBuilder: (BuildContext context, int index) {
          BlocProvider.of<FilterResult>(context).add(top20penawaran);
          BlocProvider.of<FilterResultLength>(context)
              .add(top20penawaran.length);
          top20penawaran.sort(((a, b) => a.id.compareTo(b.id)));
          return cardV6(
            id: top20penawaran[index].id,
            name: top20penawaran[index].name,
            amount: top20penawaran[index].amount,
            brand: top20penawaran[index].brand,
            logo: top20penawaran[index].logo,
            deadline: top20penawaran[index].deadline,
            type: top20penawaran[index].type,
            rating: top20penawaran[index].rating,
          );
        }),
  );
}

Widget resultFilterMasaBerlaku(
    BuildContext context, String state, List<Top20Penawaran> result) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "latest") {
          result.sort(((a, b) => a.deadline.compareTo(b.deadline)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            logo: filteredResult[index].logo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
          );
        } else if (state == "farthest") {
          result.sort(((a, b) => b.deadline.compareTo(a.deadline)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            logo: filteredResult[index].logo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
          );
        }
        return defaultResult(context);
      },
    ),
  );
}

Widget resultFilterPenilaian(
    BuildContext context, String state, List<Top20Penawaran> result) {
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: result.length,
      itemBuilder: (BuildContext context, int index) {
        if (state == "best") {
          result.sort(((a, b) => b.rating.compareTo(a.rating)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            logo: filteredResult[index].logo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
          );
        } else if (state == "worst") {
          result.sort(((a, b) => a.rating.compareTo(b.rating)));
          var filteredResult = result.map((value) => value).toList();
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: filteredResult[index].id,
            name: filteredResult[index].name,
            amount: filteredResult[index].amount,
            brand: filteredResult[index].brand,
            logo: filteredResult[index].logo,
            deadline: filteredResult[index].deadline,
            type: filteredResult[index].type,
            rating: filteredResult[index].rating,
          );
        }
        return defaultResult(context);
      },
    ),
  );
}

Widget resultCariSingleTipe(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].type.contains(result[0]) == true) {
          var temp = top20penawaran[index];
          filteredResult.add(temp);
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: top20penawaran[index].id,
            name: top20penawaran[index].name,
            amount: top20penawaran[index].amount,
            brand: top20penawaran[index].brand,
            logo: top20penawaran[index].logo,
            deadline: top20penawaran[index].deadline,
            type: top20penawaran[index].type,
            rating: top20penawaran[index].rating,
          );
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

Widget resultCariSingleKategori(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].category.contains(result[1]) == true) {
          var temp = top20penawaran[index];
          filteredResult.add(temp);
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: top20penawaran[index].id,
            name: top20penawaran[index].name,
            amount: top20penawaran[index].amount,
            brand: top20penawaran[index].brand,
            logo: top20penawaran[index].logo,
            deadline: top20penawaran[index].deadline,
            type: top20penawaran[index].type,
            rating: top20penawaran[index].rating,
          );
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

Widget resultCariSingleToko(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].brand.compareTo(result[2]) == 0) {
          var temp = top20penawaran[index];
          filteredResult.add(temp);
          BlocProvider.of<FilterResult>(context).add(filteredResult);
          BlocProvider.of<FilterResultLength>(context)
              .add(filteredResult.length);
          return cardV6(
            id: top20penawaran[index].id,
            name: top20penawaran[index].name,
            amount: top20penawaran[index].amount,
            brand: top20penawaran[index].brand,
            logo: top20penawaran[index].logo,
            deadline: top20penawaran[index].deadline,
            type: top20penawaran[index].type,
            rating: top20penawaran[index].rating,
          );
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

Widget resultCariDoubleKategoriToko(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].brand.compareTo(result[2]) == 0) {
          if (top20penawaran[index].category.contains(result[1]) == true) {
            var temp = top20penawaran[index];
            filteredResult.add(temp);
            BlocProvider.of<FilterResult>(context).add(filteredResult);
            BlocProvider.of<FilterResultLength>(context)
                .add(filteredResult.length);
            return cardV6(
              id: top20penawaran[index].id,
              name: top20penawaran[index].name,
              amount: top20penawaran[index].amount,
              brand: top20penawaran[index].brand,
              logo: top20penawaran[index].logo,
              deadline: top20penawaran[index].deadline,
              type: top20penawaran[index].type,
              rating: top20penawaran[index].rating,
            );
          } else {
            return SizedBox.shrink();
          }
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

Widget resultCariDoubleTipeToko(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].brand.compareTo(result[2]) == 0) {
          if (top20penawaran[index].type.contains(result[0]) == true) {
            var temp = top20penawaran[index];
            filteredResult.add(temp);
            BlocProvider.of<FilterResult>(context).add(filteredResult);
            BlocProvider.of<FilterResultLength>(context)
                .add(filteredResult.length);
            return cardV6(
              id: top20penawaran[index].id,
              name: top20penawaran[index].name,
              amount: top20penawaran[index].amount,
              brand: top20penawaran[index].brand,
              logo: top20penawaran[index].logo,
              deadline: top20penawaran[index].deadline,
              type: top20penawaran[index].type,
              rating: top20penawaran[index].rating,
            );
          } else {
            return SizedBox.shrink();
          }
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

Widget resultCariDoubleTipeKategori(BuildContext context, List result) {
  List<Top20Penawaran> filteredResult = [];
  return Container(
    height: Sizes.dp60(context),
    width: Sizes.dp60(context),
    child: ListView.builder(
      itemCount: top20penawaran.length,
      itemBuilder: (BuildContext context, int index) {
        if (top20penawaran[index].category.contains(result[1]) == true) {
          if (top20penawaran[index].type.contains(result[0]) == true) {
            var temp = top20penawaran[index];
            filteredResult.add(temp);
            BlocProvider.of<FilterResult>(context).add(filteredResult);
            BlocProvider.of<FilterResultLength>(context)
                .add(filteredResult.length);
            return cardV6(
              id: top20penawaran[index].id,
              name: top20penawaran[index].name,
              amount: top20penawaran[index].amount,
              brand: top20penawaran[index].brand,
              logo: top20penawaran[index].logo,
              deadline: top20penawaran[index].deadline,
              type: top20penawaran[index].type,
              rating: top20penawaran[index].rating,
            );
          } else {
            return SizedBox.shrink();
          }
        } else {
          return SizedBox.shrink();
        }
      },
    ),
  );
}

// Widget resultFilterTipe(
//     BuildContext context, String state, List<Top20Penawaran> result) {
//   List<Top20Penawaran> filteredResult = [];
//   return Container(
//     height: Sizes.dp60(context),
//     width: Sizes.dp60(context),
//     child: ListView.builder(
//       itemCount: result.length,
//       itemBuilder: (BuildContext context, int index) {
//         if (result[index].type.contains(state) == true) {
//           var temp = result[index];
//           filteredResult.add(temp);
//           BlocProvider.of<FilterResult>(context).add(filteredResult);
//           BlocProvider.of<FilterResultLength>(context)
//               .add(filteredResult.length);
//           return cardV6(
//             name: top20penawaran[index].name,
//             amount: top20penawaran[index].amount,
//             brand: top20penawaran[index].brand,
//             deadline: top20penawaran[index].deadline,
//             type: top20penawaran[index].type,
//             rating: top20penawaran[index].rating,
//           );
//         } else {
//           return SizedBox.shrink();
//         }
//       },
//     ),
//   );
// }

// Widget resultFilterToko(
//     BuildContext context, String state, List<Top20Penawaran> result) {
//   List<Top20Penawaran> filteredResult = [];
//   return Container(
//     height: Sizes.dp60(context),
//     width: Sizes.dp60(context),
//     child: ListView.builder(
//       itemCount: result.length,
//       itemBuilder: (BuildContext context, int index) {
//         if (result[index].name.contains(state) == true) {
//           var temp = result[index];
//           filteredResult.add(temp);
//           BlocProvider.of<FilterResult>(context).add(filteredResult);
//           BlocProvider.of<FilterResultLength>(context)
//               .add(filteredResult.length);
//           return cardV6(
//             name: top20penawaran[index].name,
//             amount: top20penawaran[index].amount,
//             brand: top20penawaran[index].brand,
//             deadline: top20penawaran[index].deadline,
//             type: top20penawaran[index].type,
//             rating: top20penawaran[index].rating,
//           );
//         } else {
//           return SizedBox.shrink();
//         }
//       },
//     ),
//   );
// }
