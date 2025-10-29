import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/main.dart' as app;
import 'package:ai_tutoring_app_frontend/screens/profile_routes.dart';

void main() {
  testWidgets('MaterialApp contains Profile named route and it can be navigated to', (tester) async {
    await tester.pumpWidget(const app.MyApp());

    // Verify the route is present in MaterialApp routes map.
    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(materialApp.routes?.containsKey(ProfileRoutes.profile), isTrue);

    // Attempt to navigate to the Profile route.
    final navigatorState = tester.state<NavigatorState>(find.byType(Navigator));
    navigatorState.pushNamed(ProfileRoutes.profile);
    await tester.pumpAndSettle();

    // Expect a Scaffold to be present after navigation (ProfileScreen uses Scaffold through app structure).
    expect(find.byType(Scaffold), findsWidgets);
  });
}
