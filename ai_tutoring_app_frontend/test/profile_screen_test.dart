import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_tutoring_app_frontend/theme/app_theme.dart';
import 'package:ai_tutoring_app_frontend/screens/profile_screen.dart';

void main() {
  testWidgets('ProfileScreen builds with Ocean theme', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.ocean,
        home: const ProfileScreen(),
      ),
    );
    expect(find.text('Profile'), findsOneWidget);
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}
