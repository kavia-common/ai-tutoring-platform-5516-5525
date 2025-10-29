import 'dart:io';

// PUBLIC_INTERFACE
Future<void> main() async {
  /// Emits the relative path to the Flutter app directory and exits 0 if found.
  const rel = 'ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend';
  final pubspec = File('$rel/pubspec.yaml');
  if (pubspec.existsSync()) {
    // Print to stdout for easy capture by shell or CI tools.
    stdout.writeln(rel);
    exit(0);
  } else {
    stderr.writeln('Error: pubspec.yaml not found at $rel');
    exit(1);
  }
}
