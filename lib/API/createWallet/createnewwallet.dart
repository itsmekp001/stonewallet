import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stone_wallet_main/API/shared_preferences.dart';
import 'package:stone_wallet_main/Responses/travel2_response.dart';
import 'package:stone_wallet_main/UI/Constants/urls.dart';

class ApiServiceForCreateWallet {
  final Dio _dio = Dio();
  Future<Travel2Response> createWallet(String name, String pass) async {
    try {
      if (kDebugMode) {
        print("Create wallet api hit");
      }
      Response response = await _dio.post(
        createwallet,
        data: {"mnemonic": name, "password": pass},
        options: Options(headers: {
          "Cookie":
              "csrftoken=${MySharedPreferences().getCsrfToken(await SharedPreferences.getInstance())}; sessionid=${MySharedPreferences().getSessionId(await SharedPreferences.getInstance())}",
          "X-CSRFToken": MySharedPreferences()
              .getCsrfToken(await SharedPreferences.getInstance())
        }),
      );
      if (kDebugMode) {
        print("travel next ${response.data}");
      }

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('seed', response.data.toString());

      Travel2Response travel2response =
          Travel2Response.fromJson(json.decode(response.toString()));
      return travel2response;
    } catch (error) {
      if (kDebugMode) {
        print("Error travel list $error");
      }
      rethrow;
    }
  }
}
