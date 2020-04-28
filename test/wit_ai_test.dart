import 'package:flutter_test/flutter_test.dart';

import 'package:wit_ai/wit_ai.dart';

void main() {
  test("Checks if the method message returns the correct value", 
    () async {
      final wit = 
        Wit(accessToken: "ACCESS_TOKEN_HERE");
      
      String query = "Hello";
      dynamic response = await wit.message(query);
      print(response);
      
      expect(response, isNotNull);
      expect(response['_text'], query);     
    }
  );

}
