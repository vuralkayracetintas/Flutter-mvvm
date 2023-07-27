// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

@immutable
class BasicModel {
  final String userName;

  const BasicModel(this.userName);

  @override
  bool operator ==(covariant BasicModel other) {
    if (identical(this, other)) return true;

    return other.userName == userName;
  }

  @override
  int get hashCode => userName.hashCode;
}
