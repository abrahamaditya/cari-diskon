import 'package:flutter_bloc/flutter_bloc.dart';

class RatingInput extends Bloc<double, double> {
  RatingInput() : super(0.00) {
    on<double>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class InitialSaved extends Bloc<String, String> {
  InitialSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class InitialValidator extends Bloc<String, String> {
  InitialValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class CommentSaved extends Bloc<String, String> {
  CommentSaved() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class CommentValidator extends Bloc<String, String> {
  CommentValidator() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}

class SendButton extends Bloc<String, String> {
  SendButton() : super("null") {
    on<String>(
      (_, emit) {
        emit(_);
      },
    );
  }
}
