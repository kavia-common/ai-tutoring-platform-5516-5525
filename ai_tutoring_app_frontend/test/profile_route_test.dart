import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_tutoring_app_frontend/main.dart' as app;
import 'package:ai_tutoring_app_frontend/screens/profile_routes.dart';

void main() {
  testWidgets('App registers Profile route', (tester) async {
    await tester.pumpWidget(const app.MyApp());
    expect(find.byType(MaterialApp), findsOneWidget);

    // Try pushing the profile route to ensure it's present.
    final navigator = tester.state<NavigatorState>(find.byType(Navigator));
    navigator.pushNamed(ProfileRoutes.profile);
    await tester.pumpAndSettle();

    // No exception means route exists; also verify at least something rendered.
    expect(find.byType(Scaffold), findsWidgets);
  });
}
