//import 'package:flutter/material.dart';
// To parse this JSON data, do
//
//     final breweryModel = breweryModelFromJson(jsonString);

import 'dart:convert';

List<BreweryModel> breweryModelFromJson(String str) => List<BreweryModel>.from(
    json.decode(str).map((x) => BreweryModel.fromJson(x)));

String breweryModelToJson(List<BreweryModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BreweryModel {
  BreweryModel({
    this.id,
    this.obdbId,
    this.name,
    this.breweryType,
    this.street,
    this.address2,
    this.address3,
    this.city,
    this.state,
    this.countyProvince,
    this.postalCode,
    this.country,
    this.longitude,
    this.latitude,
    this.phone,
    this.websiteUrl,
    this.updatedAt,
    this.createdAt,
  });

  int id;
  String obdbId;
  String name;
  String breweryType;
  String street;
  dynamic address2;
  dynamic address3;
  String city;
  String state;
  dynamic countyProvince;
  String postalCode;
  String country;
  String longitude;
  String latitude;
  String phone;
  String websiteUrl;
  String updatedAt;
  String createdAt;

  factory BreweryModel.fromJson(Map<String, dynamic> json) => BreweryModel(
        id: json["id"],
        obdbId: json["obdb_id"],
        name: json["name"],
        breweryType: json["brewery_type"],
        street: json["street"] == null ? null : json["street"],
        address2: json["address_2"],
        address3: json["address_3"],
        city: json["city"],
        state: json["state"],
        countyProvince: json["county_province"],
        postalCode: json["postal_code"],
        country: json["country"],
        longitude: json["longitude"] == null ? null : json["longitude"],
        latitude: json["latitude"] == null ? null : json["latitude"],
        phone: json["phone"] == null ? null : json["phone"],
        websiteUrl: json["website_url"] == null ? null : json["website_url"],
        updatedAt: json["updated_at"],
        createdAt: json["created_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "obdb_id": obdbId,
        "name": name,
        "brewery_type": breweryType,
        "street": street == null ? null : street,
        "address_2": address2,
        "address_3": address3,
        "city": city,
        "state": state,
        "county_province": countyProvince,
        "postal_code": postalCode,
        "country": country,
        "longitude": longitude == null ? null : longitude,
        "latitude": latitude == null ? null : latitude,
        "phone": phone == null ? null : phone,
        "website_url": websiteUrl == null ? null : websiteUrl,
        "updated_at": updatedAt,
        "created_at": createdAt,
      };
}

// enum Country { UNITED_STATES }

// final countryValues = EnumValues({"United States": Country.UNITED_STATES});

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }


// class BreweryModel with ChangeNotifier {
//   int id;
//   String obdbId;
//   String name;
//   String breweryType;
//   //Null street;
//   //Null address2;
//   //Null address3;
//   String city;
//   String state;
//   //Null countyProvince;
//   String postalCode;
//   String country;
//   //Null longitude;
//   //Null latitude;
//   //Null phone;
//   //Null websiteUrl;
//   String updatedAt;
//   String createdAt;

//   BreweryModel(
//       {this.id,
//       this.obdbId,
//       this.name,
//       this.breweryType,
//       // this.street,
//       // this.address2,
//       // this.address3,
//       this.city,
//       this.state,
//       //this.countyProvince,
//       this.postalCode,
//       this.country,
//       // this.longitude,
//       // this.latitude,
//       // this.phone,
//       // this.websiteUrl,
//       this.updatedAt,
//       this.createdAt});

//   BreweryModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     obdbId = json['obdb_id'];
//     name = json['name'];
//     breweryType = json['brewery_type'];
//     // street = json['street'];
//     // address2 = json['address_2'];
//     // address3 = json['address_3'];
//     city = json['city'];
//     state = json['state'];
//     //countyProvince = json['county_province'];
//     postalCode = json['postal_code'];
//     country = json['country'];
//     // longitude = json['longitude'];
//     // latitude = json['latitude'];
//     // phone = json['phone'];
//     // websiteUrl = json['website_url'];
//     updatedAt = json['updated_at'];
//     createdAt = json['created_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['obdb_id'] = this.obdbId;
//     data['name'] = this.name;
//     data['brewery_type'] = this.breweryType;
//     // data['street'] = this.street;
//     // data['address_2'] = this.address2;
//     // data['address_3'] = this.address3;
//     data['city'] = this.city;
//     data['state'] = this.state;
//     //data['county_province'] = this.countyProvince;
//     data['postal_code'] = this.postalCode;
//     data['country'] = this.country;
//     // data['longitude'] = this.longitude;
//     // data['latitude'] = this.latitude;
//     // data['phone'] = this.phone;
//     // data['website_url'] = this.websiteUrl;
//     data['updated_at'] = this.updatedAt;
//     data['created_at'] = this.createdAt;
//     return data;
//   }
// }
