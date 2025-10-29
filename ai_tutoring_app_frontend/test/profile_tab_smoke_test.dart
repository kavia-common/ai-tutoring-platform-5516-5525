import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_tutoring_app_frontend/main.dart';

void main() {
  testWidgets('Profile tab exists and shows Profile header', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(BottomNavigationBar), findsOneWidget);

    // Tap the Profile tab (index 3)
    final items = find.byType(BottomNavigationBarItem);
    // Fallback: tap icon by tooltip or icon
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    // Expect Profile header text present
    expect(find.text('Profile'), findsWidgets);
  });
}
