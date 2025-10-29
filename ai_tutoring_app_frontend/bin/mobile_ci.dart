import 'dart:io';

// PUBLIC_INTERFACE
Future<void> main(List<String> args) async {
  /// Root-level analyzer/test shim for CI.
  /// It changes into the real Flutter app folder and runs flutter commands.
  final appDirPath = Platform.environment['FLUTTER_APP_DIR'] ??
      'ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend';
  final appDir = Directory(appDirPath);

  if (!appDir.existsSync()) {
    stderr.writeln('Error: App dir not found: $appDirPath');
    exit(1);
  }
  final pubspec = File('${appDir.path}/pubspec.yaml');
  if (!pubspec.existsSync()) {
    stderr.writeln('Error: pubspec.yaml not found in $appDirPath');
    exit(2);
  }

  final cmd = args.isEmpty ? 'analyze' : args.first;
  final sequences = <List<String>>[
    ['flutter', 'pub', 'get'],
    if (cmd == 'analyze') ['flutter', 'analyze'],
    if (cmd == 'test') ['flutter', 'test'],
    if (cmd != 'analyze' && cmd != 'test') ['flutter', ...args],
  ];

  for (final c in sequences) {
    stdout.writeln('Running: ${c.join(' ')} (cwd: ${appDir.path})');
    final result = await Process.run(c.first, c.sublist(1),
        workingDirectory: appDir.path, runInShell: true);
    stdout.write(result.stdout);
    stderr.write(result.stderr);
    if (result.exitCode != 0) {
      exit(result.exitCode);
    }
  }
}
