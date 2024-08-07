import 'dart:convert';

LoginModel loginModelJson(String str) => LoginModel.fromJson(json.decode(str));
String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String userId;
  String password;

  LoginModel({this.userId, this.password});

  factory LoginModel.fromJson(Map<String, gynamic> json) =>
      LoginModel(userId: json["userId"], password: json["password"]);

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "password": password,
      };

  String get userId => userId;
  String get password => password;
}