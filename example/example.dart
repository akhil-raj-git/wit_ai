import 'package:wit_ai/wit_ai.dart';

callWit() async {
  final wit = Wit(accessToken: "6EQHTQPEZPQ6NJ45EHAIPLHEZU6QCTD4");

  dynamic response = await wit.message("Hello");

  return(response['entities']);
}