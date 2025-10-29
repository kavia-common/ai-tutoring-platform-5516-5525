import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/screens/edit_profile_screen.dart';
import 'package:ai_tutoring_app_frontend/theme/app_theme.dart';

void main() {
  testWidgets('EditProfileScreen builds and shows form controls', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: AppTheme.ocean,
        home: const EditProfileScreen(),
      ),
    );

    expect(find.text('Edit Profile'), findsWidgets);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byIcon(Icons.save_outlined), findsOneWidget);
  });
}
