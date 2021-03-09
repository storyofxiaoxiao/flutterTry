import 'package:test/test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'dart:convert';
import 'package:flutter_app/resources/api_provider.dart';

void main() {
  test("Testing the network call", () {
    final apiProvider = ApiProvider();
    apiProvider.client = MockClient((request){
      final mapJson = {
        'id':123
      };
      // return Response(json.encode(mapJson), 200);
    });
  });
}
