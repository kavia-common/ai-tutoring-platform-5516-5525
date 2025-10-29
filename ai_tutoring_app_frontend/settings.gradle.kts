/**
 * Root-level settings shim for CI tools probing Android/Gradle at repo root.
 * The real Android app module is at ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend/android.
 * This file exists only to point tooling to the correct location.
 */
pluginManagement {
  repositories {
    google()
    mavenCentral()
    gradlePluginPortal()
  }
}

rootProject.name = "ai_tutoring_monorepo_root_wrapper"

// Include a placeholder project that points to the real Android app.
// Note: This is advisory for tools; standard development should use the app's own Android settings at its path.
include(":app")
project(":app").projectDir = File("ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend/android/app")
