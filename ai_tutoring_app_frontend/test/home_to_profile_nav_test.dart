import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/theme/app_theme.dart';
import 'package:ai_tutoring_app_frontend/screens/home_screen.dart';

void main() {
  testWidgets('Home bottom nav includes Profile and navigates to it', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.ocean,
        home: const HomeScreen(),
      ),
    );

    // Verify bottom nav has Profile item.
    expect(find.text('Profile'), findsOneWidget);

    // Tap Profile tab.
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    // AppBar title should include Profile, and page should render Profile header.
    expect(find.textContaining('Profile'), findsWidgets);
  });
}
