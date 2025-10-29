# Azure DevOps Windows PowerShell example for Flutter project in subdirectory

$ErrorActionPreference = "Stop"

# Set working directory to the Flutter app root (contains pubspec.yaml)
Set-Location "ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend"

# Validate pubspec.yaml exists
if (-Not (Test-Path "pubspec.yaml")) {
  Write-Error "pubspec.yaml not found. Ensure working directory is correct."
}

# Install Flutter (if needed) and run commands
flutter --version
flutter pub get
flutter analyze
flutter test
