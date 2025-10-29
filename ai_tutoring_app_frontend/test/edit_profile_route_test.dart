import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/main.dart' as app;
import 'package:ai_tutoring_app_frontend/screens/edit_profile_routes.dart';

void main() {
  testWidgets('App registers Edit Profile route', (tester) async {
    await tester.pumpWidget(const app.MyApp());

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(materialApp.routes?.containsKey(EditProfileRoutes.editProfile), isTrue);

    final navigatorState = tester.state<NavigatorState>(find.byType(Navigator));
    navigatorState.pushNamed(EditProfileRoutes.editProfile);
    await tester.pumpAndSettle();

    expect(find.byType(Scaffold), findsWidgets);
  });
}
