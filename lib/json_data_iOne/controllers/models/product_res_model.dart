// To parse this JSON data, do
//
//     final productResModel = productResModelFromMap(jsonString);

import 'dart:convert';

ProductResModel productResModelFromMap(String str) =>
    ProductResModel.fromMap(json.decode(str));

String productResModelToMap(ProductResModel data) => json.encode(data.toMap());

class ProductResModel {
  final int code;
  final String msg;
  final Data data;

  ProductResModel({required this.code, required this.msg, required this.data});

  factory ProductResModel.fromMap(Map<String, dynamic> json) => ProductResModel(
    code: json["code"],
    msg: json["msg"],
    data: Data.fromMap(json["data"]),
  );

  Map<String, dynamic> toMap() => {
    "code": code,
    "msg": msg,
    "data": data.toMap(),
  };
}

  

class Data {
  final int id;
  final String employeeId;
  final String username;
  final String gender;
  final String genderLabel;
  final String profilePhoto;
  final String email;
  final String phoneNumber;
  final String position;
  final String departmentId;
  final String department;
  final String hodEmail;
  final String serviceGrade;
  final int annualLeave;
  final String dateJoined;
  final String isActive;
  final String isActiveLabel;
  final int locationId;
  final double latitude;
  final double longitude;
  final String appToken;

  Data({
    required this.id,
    required this.employeeId,
    required this.username,
    required this.gender,
    required this.genderLabel,
    required this.profilePhoto,
    required this.email,
    required this.phoneNumber,
    required this.position,
    required this.departmentId,
    required this.department,
    required this.hodEmail,
    required this.serviceGrade,
    required this.annualLeave,
    required this.dateJoined,
    required this.isActive,
    required this.isActiveLabel,
    required this.locationId,
    required this.latitude,
    required this.longitude,
    required this.appToken,
  });

  factory Data.fromMap(Map<String, dynamic> json) => Data(
    id: json["id"],
    employeeId: json["employee_id"],
    username: json["username"],
    gender: json["gender"],
    genderLabel: json["gender_label"],
    profilePhoto: json["profile_photo"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    position: json["position"],
    departmentId: json["department_id"],
    department: json["department"],
    hodEmail: json["hod_email"],
    serviceGrade: json["service_grade"],
    annualLeave: json["annual_leave"],
    dateJoined: json["date_joined"],
    isActive: json["is_active"],
    isActiveLabel: json["is_active_label"],
    locationId: json["location_id"],
    latitude: json["latitude"]?.toDouble(),
    longitude: json["longitude"]?.toDouble(),
    appToken: json["app_token"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "employee_id": employeeId,
    "username": username,
    "gender": gender,
    "gender_label": genderLabel,
    "profile_photo": profilePhoto,
    "email": email,
    "phone_number": phoneNumber,
    "position": position,
    "department_id": departmentId,
    "department": department,
    "hod_email": hodEmail,
    "service_grade": serviceGrade,
    "annual_leave": annualLeave,
    "date_joined": dateJoined,
    "is_active": isActive,
    "is_active_label": isActiveLabel,
    "location_id": locationId,
    "latitude": latitude,
    "longitude": longitude,
    "app_token": appToken,
  };
}
