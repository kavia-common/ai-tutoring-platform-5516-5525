import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/main.dart';
import 'package:ai_tutoring_app_frontend/screens/routes.dart';

void main() {
  testWidgets('MaterialApp registers Profile and Edit Profile routes', (tester) async {
    await tester.pumpWidget(const MyApp());

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    // Validate that the routes map contains our named routes.
    expect(materialApp.routes?.containsKey(ProfileRoutes.profile), isTrue);
    expect(materialApp.routes?.containsKey(EditProfileRoutes.editProfile), isTrue);
  });
}
