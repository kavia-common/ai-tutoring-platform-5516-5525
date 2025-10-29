import 'dart:io';

/// PUBLIC_INTERFACE
/// Prints the correct Flutter app path and exits with non-zero so CI surfaces the message.
void main(List<String> args) {
  stderr.writeln('This repository root is not a Flutter app.');
  stderr.writeln('Please run Flutter commands from:');
  stderr.writeln('  ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
  stderr.writeln('Alternatively, use the helper: ./flutterw <command>');
  exitCode = 2;
}
