// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:professional/models/model_spot.dart';

class ModelGunung {
  final String id;
  final String namaGunung;
  final String lat;
  final String long;
  final String deskripsi;
  final String jalurPendakian;
  final String gunung;
  final ImageHash? imageHash;
  final List<Spot> spot;
  final String provinsi;

  const ModelGunung({
    required this.id,
    required this.namaGunung,
    required this.lat,
    required this.long,
    required this.deskripsi,
    required this.jalurPendakian,
    required this.gunung,
    required this.imageHash,
    required this.spot,
    required this.provinsi,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namaGunung': namaGunung,
      'lat': lat,
      'long': long,
      'deskripsi': deskripsi,
      'jalurPendakian': jalurPendakian,
      'gunung': gunung,
      'imageHash': imageHash,
      'spot': spot.map((x) => x.toMap()).toList(),
      'provinsi': provinsi,
    };
  }

  factory ModelGunung.fromMap(Map<String, dynamic> map, String id) {
    return ModelGunung(
      id: id,
      namaGunung: map['namaGunung'] as String,
      lat: map['lat'] as String,
      long: map['long'] as String,
      deskripsi: map['deskripsi'] as String,
      jalurPendakian: map['jalurPendakian'] as String,
      gunung: map['gunung'] as String,
      imageHash: map["imageHash"] != null
          ? ImageHash.fromJson(map["imageHash"])
          : null,
      spot: List<Spot>.from(
        (map['spot'] as List<int>).map<Spot>(
          (x) => Spot.fromMap(x as Map<String, dynamic>),
        ),
      ),
      provinsi: map['provinsi'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelGunung.fromJson(
    DocumentSnapshot<Map<String, dynamic>> data,
  ) =>
      ModelGunung.fromMap(
        data.data()!,
        data.id,
      );
}

class ImageHash {
  String imageUrl;
  String imageHash;

  ImageHash({required this.imageUrl, required this.imageHash});
  factory ImageHash.fromJson(
    Map<String, dynamic> json,
  ) {
    return ImageHash(
      imageUrl: json["image_url"],
      imageHash: json["image_hash"],
    );
  }

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "image_hash": imageHash,
      };
}
