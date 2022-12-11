import 'package:caridiskon/data/filter.dart';
import 'package:caridiskon/data/semua_penawaran.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterAllResult extends Bloc<List<SemuaPenawaran>, List<SemuaPenawaran>> {
  FilterAllResult() : super([]) {
    on<List<SemuaPenawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllName extends Bloc<String, String> {
  FilterAllName() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllMasaBerlaku extends Bloc<String, String> {
  FilterAllMasaBerlaku() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllPenilaian extends Bloc<String, String> {
  FilterAllPenilaian() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllTipe extends Bloc<String, String> {
  FilterAllTipe() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllKategori extends Bloc<String, String> {
  FilterAllKategori() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllToko extends Bloc<String, String> {
  FilterAllToko() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllResultLength extends Bloc<int, int> {
  FilterAllResultLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllButton extends Bloc<String, List> {
  FilterAllButton() : super([]) {
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

class FilterAllAble extends Bloc<String, String> {
  FilterAllAble() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

///////////////////////////////////

class DetailAllPenawaran extends Bloc<String, SemuaPenawaran> {
  DetailAllPenawaran() : super(semuapenawaran[0]) {
    on<String>(
      (_, emit) {
        for (int i = 0; i < semuapenawaran.length; i++) {
          if (semuapenawaran[i].id == _) {
            emit(semuapenawaran[i]);
          }
        }
      },
    );
  }
}

class FilterAllResultDetail
    extends Bloc<List<SemuaPenawaran>, List<SemuaPenawaran>> {
  FilterAllResultDetail() : super([]) {
    on<List<SemuaPenawaran>>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllResultDetailLength extends Bloc<int, int> {
  FilterAllResultDetailLength() : super(-1) {
    on<int>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllNameDetail extends Bloc<String, String> {
  FilterAllNameDetail() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllWaktu extends Bloc<String, String> {
  FilterAllWaktu() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class FilterAllSuka extends Bloc<String, String> {
  FilterAllSuka() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaButtonAll extends Bloc<String, String> {
  SukaButtonAll() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SukaKeyButtonAll extends Bloc<String, String> {
  SukaKeyButtonAll() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
