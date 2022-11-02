import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/data/top_20_penawaran.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterResult extends Bloc<List<Top20Penawaran>, List<Top20Penawaran>> {
  FilterResult() : super([]) {
    on<List<Top20Penawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterName extends Bloc<String, String> {
  FilterName() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterMasaBerlaku extends Bloc<String, String> {
  FilterMasaBerlaku() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterPenilaian extends Bloc<String, String> {
  FilterPenilaian() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterTipe extends Bloc<String, String> {
  FilterTipe() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterKategori extends Bloc<String, String> {
  FilterKategori() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterToko extends Bloc<String, String> {
  FilterToko() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterResultLength extends Bloc<int, int> {
  FilterResultLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterButton extends Bloc<String, List> {
  FilterButton() : super([]) {
    List result = ["null", "null", "null"];
    on<String>(
      (_, emit) {
        if (_ == "Cari") {
          print(result);
          emit(result);
        } else {
          if (tipeFilterData.contains(_) == true) {
            result.removeAt(0);
            result.insert(0, _);
          }
          if (kategoriFilterData.contains(_) == true) {
            result.removeAt(1);
            result.insert(1, _);
          }
          if (tokoFilterData.contains(_) == true) {
            result.removeAt(2);
            result.insert(2, _);
          }

          // // Tipe = [0]
          // if (tipeFilterData.contains(_) == true) {
          //   result.add(_);
          // } else if (tipeFilterData.contains(_) == false) {
          //   result.add("null");
          // }
          // // Kategori = [1]
          // //result.add("null");
          // else if (kategoriFilterData.contains(_) == false) {
          //   result.add("null");
          // }
          // // Toko = [2]
          // else if (tokoFilterData.contains(_) == true) {
          //   result.add(_);
          // } else if (tokoFilterData.contains(_) == false) {
          //   result.add("null");
          // }
        }
      },
    );
  }
}

class FilterAble extends Bloc<String, String> {
  FilterAble() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
