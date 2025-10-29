import 'dart:io';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Project root contains pubspec.yaml', () async {
    // This test asserts the test runner is executed from the Flutter project root.
    final exists = File('pubspec.yaml').existsSync();
    expect(exists, isTrue, reason: 'Run tests from ai_tutoring_app_frontend directory (contains pubspec.yaml)');
  });
}
