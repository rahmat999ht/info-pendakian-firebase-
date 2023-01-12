// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:professional/models/model_gunung.dart';
import 'package:professional/models/model_kategori.dart';

class Spot {
  final String namaSpot;
  final ImageHash imageHash;
  final Kategori kategori;
  final List<Suka> listSuka;

  const Spot({
    required this.namaSpot,
    required this.imageHash,
    required this.kategori,
    required this.listSuka,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namaSpot': namaSpot,
      'imageHash': imageHash.toJson(),
      'kategori': kategori.toMap(),
      'listSuka': listSuka.map((x) => x.toMap()).toList(),
    };
  }

  factory Spot.fromMap(Map<String, dynamic> map) {
    return Spot(
      namaSpot: map['namaSpot'] as String,
      imageHash: ImageHash.fromJson(map['imageHash'] as Map<String, dynamic>),
      kategori: Kategori.fromJson(
          map['kategori'] as DocumentSnapshot<Map<String, dynamic>>),
      listSuka: List<Suka>.from(
        (map['listSuka'] as List<int>).map<Suka>(
          (x) => Suka.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }
}

class Suka {
  final String idUser;
  const Suka({
    required this.idUser,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idUser': idUser,
    };
  }

  factory Suka.fromMap(Map<String, dynamic> map) {
    return Suka(
      idUser: map['idUser'] as String,
    );
  }
}
