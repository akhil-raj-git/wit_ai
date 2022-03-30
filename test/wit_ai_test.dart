import 'package:flutter_test/flutter_test.dart';

import 'package:wit_ai/wit_ai.dart';
import '../example/example.dart';

void main() {
  final wit = Wit(accessToken: "6EQHTQPEZPQ6NJ45EHAIPLHEZU6QCTD4");
  test("Checks if the method message returns the correct value", () async {
    String query = "Hello";
    dynamic response = await wit.message(query);
    print(response);

    expect(response, isNotNull);
    expect(response['text'], query);
  });

  test("Tests the example class", () async {
    dynamic call = await callWit();
    print(call);

    expect(call, isNotNull);
  });
}
