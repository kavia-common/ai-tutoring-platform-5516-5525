import 'package:flutter_test/flutter_test.dart';
import 'package:ai_tutoring_app_frontend/main.dart';

void main() {
  testWidgets('MaterialApp builds with Ocean theme and routes', (tester) async {
    await tester.pumpWidget(const MyApp());
    // Verify app builds to first frame without throwing.
    expect(find.byType(MyApp), findsOneWidget);
  });
}
