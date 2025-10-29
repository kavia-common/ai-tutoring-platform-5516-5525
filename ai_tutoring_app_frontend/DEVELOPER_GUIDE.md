# Developer Guide

Project root (Flutter app):
- ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

Run commands from this directory:

1) Install dependencies
   flutter pub get

2) Analyze
   flutter analyze

3) Run tests
   flutter test

Helper scripts:
- ./analyze.sh — runs pub get, analyze, and test from this folder
- ../.. path contains repo-level helpers (e.g., ../../ci.sh) that cd into this directory before running Flutter commands.

Notes:
- If a CI job reports "Could not determine project root directory for Flutter project", ensure the job first cd's into:
  ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend
