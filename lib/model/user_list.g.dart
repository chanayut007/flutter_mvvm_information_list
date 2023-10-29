// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserList _$UserListFromJson(Map<String, dynamic> json) => UserList(
      results: (json['results'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserListToJson(UserList instance) => <String, dynamic>{
      'results': instance.results,
      'info': instance.info,
    };

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      seed: json['seed'] as String?,
      results: json['results'] as int?,
      page: json['page'] as int?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'seed': instance.seed,
      'results': instance.results,
      'page': instance.page,
      'version': instance.version,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      gender: json['gender'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      email: json['email'] as String?,
      login: json['login'] == null
          ? null
          : Login.fromJson(json['login'] as Map<String, dynamic>),
      dob: json['dob'] == null
          ? null
          : Dob.fromJson(json['dob'] as Map<String, dynamic>),
      registered: json['registered'] == null
          ? null
          : Dob.fromJson(json['registered'] as Map<String, dynamic>),
      phone: json['phone'] as String?,
      cell: json['cell'] as String?,
      id: json['id'] == null
          ? null
          : Id.fromJson(json['id'] as Map<String, dynamic>),
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
      nat: json['nat'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'location': instance.location,
      'email': instance.email,
      'login': instance.login,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'cell': instance.cell,
      'id': instance.id,
      'picture': instance.picture,
      'nat': instance.nat,
    };

Dob _$DobFromJson(Map<String, dynamic> json) => Dob(
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      age: json['age'] as int?,
    );

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{
      'date': instance.date?.toIso8601String(),
      'age': instance.age,
    };

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      street: json['street'] == null
          ? null
          : Street.fromJson(json['street'] as Map<String, dynamic>),
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postcode: json['postcode'],
      coordinates: json['coordinates'] == null
          ? null
          : Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      timezone: json['timezone'] == null
          ? null
          : Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
      'coordinates': instance.coordinates,
      'timezone': instance.timezone,
    };

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

Street _$StreetFromJson(Map<String, dynamic> json) => Street(
      number: json['number'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
    };

Timezone _$TimezoneFromJson(Map<String, dynamic> json) => Timezone(
      offset: json['offset'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$TimezoneToJson(Timezone instance) => <String, dynamic>{
      'offset': instance.offset,
      'description': instance.description,
    };

Login _$LoginFromJson(Map<String, dynamic> json) => Login(
      uuid: json['uuid'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      salt: json['salt'] as String?,
      md5: json['md5'] as String?,
      sha1: json['sha1'] as String?,
      sha256: json['sha256'] as String?,
    );

Map<String, dynamic> _$LoginToJson(Login instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'password': instance.password,
      'salt': instance.salt,
      'md5': instance.md5,
      'sha1': instance.sha1,
      'sha256': instance.sha256,
    };

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String?,
      first: json['first'] as String?,
      last: json['last'] as String?,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };
