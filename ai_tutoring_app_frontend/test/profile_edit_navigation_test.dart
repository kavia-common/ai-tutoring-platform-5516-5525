import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:ai_tutoring_app_frontend/main.dart';

void main() {
  testWidgets('Edit button on Profile navigates to Edit Profile screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    // Switch to the Profile tab.
    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();

    // Tap Edit button on the profile header.
    final editButton = find.widgetWithIcon(FilledButton, Icons.edit_outlined);
    expect(editButton, findsOneWidget);

    await tester.tap(editButton);
    await tester.pumpAndSettle();

    // Expect an Edit Profile app bar title.
    expect(find.text('Edit Profile'), findsWidgets);
  });
}
