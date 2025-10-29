import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/theme/app_theme.dart';
import 'package:ai_tutoring_app_frontend/screens/home_screen.dart';

void main() {
  testWidgets('HomeScreen bottom nav has 4 items and switches to Profile', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.ocean,
        home: const HomeScreen(),
      ),
    );

    expect(find.byType(BottomNavigationBar), findsOneWidget);
    // Expect 4 labeled items including Profile
    expect(find.text('Sessions'), findsOneWidget);
    expect(find.text('Documents'), findsOneWidget);
    expect(find.text('Code'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);

    // Tap Profile and verify title updates accordingly
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.textContaining('AI Tutor • Profile'), findsOneWidget);
  });
}
