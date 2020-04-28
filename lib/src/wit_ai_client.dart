import 'package:flutter/material.dart';
import 'network.dart';

class Wit {
  Wit({this.accessToken});

  final String accessToken;

  Future message(String message) async {
    String query = Uri.encodeComponent(message);
    String uri = 'https://api.wit.ai/message?q=' + query;
    String auth = 'Bearer $accessToken';

    Map<String, String> headers = {
      'Authorization' : auth
    };

    NetworkHelper http = new NetworkHelper(url: uri, headers: headers);

    try {
      dynamic data = await http.getData();

      return data;
    }
    catch (e) {
      throw new ErrorDescription(
        "Something went wrong \n Suggested actions: check client access token"
      );
    }
  }
}