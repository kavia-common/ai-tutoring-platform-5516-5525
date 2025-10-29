#!/usr/bin/env node
/**
 * Root-level mobile analysis runner.
 * Ensures commands run inside the Flutter app directory.
 * Usage:
 *   node mobile_analysis.js analyze
 *   node mobile_analysis.js test
 */
const { spawn } = require('child_process');
const { existsSync } = require('fs');
const { join } = require('path');

const APP_DIR = join(__dirname, 'ai-tutoring-platform-5516-5525', 'ai_tutoring_app_frontend');
const PUBSPEC = join(APP_DIR, 'pubspec.yaml');

if (!existsSync(APP_DIR) || !existsSync(PUBSPEC)) {
  console.error('Error: Could not determine project root directory for Flutter project (missing app dir or pubspec).');
  console.error('Expected app dir:', APP_DIR);
  process.exit(1);
}

const cmd = process.argv[2] || 'analyze';

function run(cmdArgs) {
  return new Promise((resolve) => {
    const p = spawn('flutter', cmdArgs, { cwd: APP_DIR, stdio: 'inherit', shell: true });
    p.on('close', (code) => resolve(code));
  });
}

(async () => {
  let code = await run(['pub', 'get']);
  if (code !== 0) process.exit(code);

  if (cmd === 'analyze') {
    code = await run(['analyze']);
  } else if (cmd === 'test') {
    code = await run(['test']);
  } else {
    // Pass arbitrary args to flutter
    const rest = process.argv.slice(2);
    code = await run(rest);
  }
  process.exit(code);
})();
