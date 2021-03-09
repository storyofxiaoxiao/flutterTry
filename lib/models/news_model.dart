import 'package:mockito/mockito.dart';

// Real class
class NewsModel {
  String sound() => "Meow";
  bool eatFood(String food, {bool hungry}) => true;
  Future<void> chew() async => print("Chewing...");
  int walk(List<String> places) => 7;
  void sleep() {}
  void hunt(String place, String prey) {}
  int lives = 9;
}

// Mock class
class MockNews extends Mock implements NewsModel {}

// Create mock object.
var cat = MockNews();
