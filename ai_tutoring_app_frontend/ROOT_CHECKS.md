Root checks

To verify CI is in the correct working directory, run:
- dart run tool/check_project_root.dart

Or use Makefile target:
- make setup  # implicitly fails if not run in project root (due to missing pubspec)
