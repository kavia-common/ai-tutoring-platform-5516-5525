import 'dart:io';

// PUBLIC_INTERFACE
Future<void> main(List<String> args) async {
  /// Root-level CI shim that runs Flutter commands from the app directory.
  /// Usage examples:
  ///   dart run tool.dart analyze
  ///   dart run tool.dart test
  ///   dart run tool.dart "pub get"
  final appDir = Directory('ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
  if (!appDir.existsSync()) {
    stderr.writeln('Error: Flutter app directory not found at ${appDir.path}');
    exit(1);
  }
  final pubspec = File('${appDir.path}/pubspec.yaml');
  if (!pubspec.existsSync()) {
    stderr.writeln('Error: pubspec.yaml not found in ${appDir.path}');
    exit(2);
  }

  final cmd = args.isEmpty ? 'analyze' : args.first;
  final commands = <List<String>>[];

  // Always ensure deps are fetched
  commands.add(['flutter', 'pub', 'get']);

  switch (cmd) {
    case 'analyze':
      commands.add(['flutter', 'analyze']);
      break;
    case 'test':
      commands.add(['flutter', 'test']);
      break;
    default:
      // Allow arbitrary flutter subcommands, e.g., "pub", "run", etc.
      final flutterArgs = [cmd, ...args.skip(1)];
      commands.add(['flutter', ...flutterArgs]);
  }

  for (final c in commands) {
    stdout.writeln('Running: ${c.join(' ')} (cwd: ${appDir.path})');
    final result = await Process.run(
      c.first,
      c.sublist(1),
      workingDirectory: appDir.path,
      runInShell: true,
    );
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    if (result.exitCode != 0) {
      exit(result.exitCode);
    }
  }
}
