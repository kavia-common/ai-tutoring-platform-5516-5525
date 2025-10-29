import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/screens/profile_screen.dart';
import 'package:ai_tutoring_app_frontend/theme/app_theme.dart';

void main() {
  testWidgets('ProfileScreen builds with Ocean theme', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.ocean,
        home: const Scaffold(body: ProfileScreen()),
      ),
    );
    expect(find.text('Profile'), findsWidgets);
    expect(find.byType(Card), findsWidgets);
    expect(find.byIcon(Icons.edit_outlined), findsWidgets);
  });
}
