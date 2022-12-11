import 'package:caridiskon/helper/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review {
  final String id;
  final String GUID;
  final String name;
  final String profilePicture;
  final String date;
  final String comment;
  final String rating;
  String likes;
  bool likeButton;
  Review(
    this.id,
    this.GUID,
    this.name,
    this.profilePicture,
    this.date,
    this.comment,
    this.rating,
    this.likes,
    this.likeButton,
  );
}
