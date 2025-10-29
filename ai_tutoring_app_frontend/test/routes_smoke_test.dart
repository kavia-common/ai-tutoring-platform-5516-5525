import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_tutoring_app_frontend/main.dart';
import 'package:ai_tutoring_app_frontend/lib/routes.dart' as app_routes;

void main() {
  testWidgets('MaterialApp builds with registered routes', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);

    // Validate route names exist.
    expect(app_routes.AppRoutes.profile, isNotEmpty);
    expect(app_routes.AppRoutes.editProfile, isNotEmpty);
  });
}
