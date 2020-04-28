import 'package:flutter/material.dart';
import 'network.dart';

/// This class is a simple client for Wit.ai
/// 
/// It has a single method at the current moment to message your Wit app.
/// Other API methods coming soon!
/// 
/// @author Akhil Raj
/// @version 0.0.1
/// 
/// GitHub - "https://github.com/akhil-raj-git/wit_ai"
class Wit {
  
  Wit({@required this.accessToken});

  /// Access token must be passed.
  /// You can find it in your Wit app's settings.
  /// It should be titled "Client Access Token"
  final String accessToken;

  /// The message method takes a String parameter 'message' to
  /// send to your Wit app. It returns a dynamic object.
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