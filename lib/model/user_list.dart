// To parse this JSON data, do
//
//     final userList = userListFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_list.g.dart';

UserList userListFromJson(String str) => UserList.fromJson(json.decode(str));

String userListToJson(UserList data) => json.encode(data.toJson());

@JsonSerializable()
class UserList {
  @JsonKey(name: "results")
  final List<Result> results;
  @JsonKey(name: "info")
  final Info? info;

  UserList({
    required this.results,
    this.info,
  });

  factory UserList.fromJson(Map<String, dynamic> json) => _$UserListFromJson(json);

  Map<String, dynamic> toJson() => _$UserListToJson(this);
}

@JsonSerializable()
class Info {
  @JsonKey(name: "seed")
  final String? seed;
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "page")
  final int? page;
  @JsonKey(name: "version")
  final String? version;

  Info({
    this.seed,
    this.results,
    this.page,
    this.version,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: "gender")
  final String? gender;
  @JsonKey(name: "name")
  final Name? name;
  @JsonKey(name: "location")
  final Location? location;
  @JsonKey(name: "email")
  final String? email;
  @JsonKey(name: "login")
  final Login? login;
  @JsonKey(name: "dob")
  final Dob? dob;
  @JsonKey(name: "registered")
  final Dob? registered;
  @JsonKey(name: "phone")
  final String? phone;
  @JsonKey(name: "cell")
  final String? cell;
  @JsonKey(name: "id")
  final Id? id;
  @JsonKey(name: "picture")
  final Picture? picture;
  @JsonKey(name: "nat")
  final String? nat;

  Result({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}

@JsonSerializable()
class Dob {
  @JsonKey(name: "date")
  final DateTime? date;
  @JsonKey(name: "age")
  final int? age;

  Dob({
    this.date,
    this.age,
  });

  factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  Map<String, dynamic> toJson() => _$DobToJson(this);
}

@JsonSerializable()
class Id {
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "value")
  final String? value;

  Id({
    this.name,
    this.value,
  });

  factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  Map<String, dynamic> toJson() => _$IdToJson(this);
}

@JsonSerializable()
class Location {
  @JsonKey(name: "street")
  final Street? street;
  @JsonKey(name: "city")
  final String? city;
  @JsonKey(name: "state")
  final String? state;
  @JsonKey(name: "country")
  final String? country;
  @JsonKey(name: "postcode")
  final dynamic postcode;
  @JsonKey(name: "coordinates")
  final Coordinates? coordinates;
  @JsonKey(name: "timezone")
  final Timezone? timezone;

  Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable()
class Coordinates {
  @JsonKey(name: "latitude")
  final String? latitude;
  @JsonKey(name: "longitude")
  final String? longitude;

  Coordinates({
    this.latitude,
    this.longitude,
  });

  factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);
}

@JsonSerializable()
class Street {
  @JsonKey(name: "number")
  final int? number;
  @JsonKey(name: "name")
  final String? name;

  Street({
    this.number,
    this.name,
  });

  factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  Map<String, dynamic> toJson() => _$StreetToJson(this);
}

@JsonSerializable()
class Timezone {
  @JsonKey(name: "offset")
  final String? offset;
  @JsonKey(name: "description")
  final String? description;

  Timezone({
    this.offset,
    this.description,
  });

  factory Timezone.fromJson(Map<String, dynamic> json) => _$TimezoneFromJson(json);

  Map<String, dynamic> toJson() => _$TimezoneToJson(this);
}

@JsonSerializable()
class Login {
  @JsonKey(name: "uuid")
  final String? uuid;
  @JsonKey(name: "username")
  final String? username;
  @JsonKey(name: "password")
  final String? password;
  @JsonKey(name: "salt")
  final String? salt;
  @JsonKey(name: "md5")
  final String? md5;
  @JsonKey(name: "sha1")
  final String? sha1;
  @JsonKey(name: "sha256")
  final String? sha256;

  Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}

@JsonSerializable()
class Name {
  @JsonKey(name: "title")
  final String? title;
  @JsonKey(name: "first")
  final String? first;
  @JsonKey(name: "last")
  final String? last;

  Name({
    this.title,
    this.first,
    this.last,
  });

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  Map<String, dynamic> toJson() => _$NameToJson(this);
}

@JsonSerializable()
class Picture {
  @JsonKey(name: "large")
  final String? large;
  @JsonKey(name: "medium")
  final String? medium;
  @JsonKey(name: "thumbnail")
  final String? thumbnail;

  Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);

  Map<String, dynamic> toJson() => _$PictureToJson(this);
}