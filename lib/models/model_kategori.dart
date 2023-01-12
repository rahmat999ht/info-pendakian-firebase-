// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Kategori {
  final String id;
  final String kategori;
  const Kategori({
    this.id = '',
    required this.kategori,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kategori': kategori,
    };
  }

  factory Kategori.fromMap(Map<String, dynamic> map, String id) {
    return Kategori(
      id: id,
      kategori: map['kategori'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Kategori.fromJson(DocumentSnapshot<Map<String, dynamic>> data) {
    final json = data.data()!;
    return Kategori.fromMap(
      json,
      data.id,
    );
  }
}
