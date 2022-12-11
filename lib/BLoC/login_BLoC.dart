import 'package:flutter_bloc/flutter_bloc.dart';

bool LoginStatus = false;

class NamaSaved extends Bloc<String, String> {
  NamaSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class EmailSaved extends Bloc<String, String> {
  EmailSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PhoneSaved extends Bloc<String, String> {
  PhoneSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PasswordSaved extends Bloc<String, String> {
  PasswordSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PesanSaved extends Bloc<String, String> {
  PesanSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class NameValidator extends Bloc<String, String> {
  NameValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class EmailValidator extends Bloc<String, String> {
  EmailValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PasswordValidator extends Bloc<String, String> {
  PasswordValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PhoneValidator extends Bloc<String, String> {
  PhoneValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class PesanValidator extends Bloc<String, String> {
  PesanValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
