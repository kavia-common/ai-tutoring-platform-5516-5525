#!/usr/bin/env node
// PUBLIC_INTERFACE
// Prints the relative path to the Flutter project root (directory containing pubspec.yaml).
// Usage: node tools/print_flutter_root.js
const { execSync } = require('node:child_process');

try {
  // Prefer known path for speed
  const known = 'ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend/pubspec.yaml';
  const fs = require('node:fs');
  if (fs.existsSync(known)) {
    console.log('ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend');
    process.exit(0);
  }
  // Fallback: search for pubspec.yaml up to depth 4
  const out = execSync('find . -maxdepth 4 -type f -name pubspec.yaml', { stdio: ['ignore', 'pipe', 'ignore'] })
    .toString()
    .trim()
    .split('\n')
    .filter(Boolean);
  if (out.length > 0) {
    const dir = out[0].replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/').replace(/\\/g, '/');
    console.log(dir.replace('/pubspec.yaml', '').replace(/^.\//, ''));
    process.exit(0);
  }
  console.error('[ERROR] pubspec.yaml not found');
  process.exit(2);
} catch (e) {
  console.error('[ERROR] Failed to locate Flutter project root:', e.message);
  process.exit(3);
}
