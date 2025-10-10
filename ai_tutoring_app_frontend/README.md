# AI Tutoring App Frontend

## Overview
This mobile frontend is a Flutter app implementing the AI Tutoring experience with an Ocean Professional theme. It provides a modern, minimal UI for exploring topics, chatting with an AI tutor, scanning problems, viewing step-by-step solutions, managing documents, and generating code from study context. The current build uses local sample data to enable full UI navigation and interactions while backend services are being integrated.

## Quick Start: Run the Flutter Preview
Follow these steps to run the app in debug mode on an emulator or a connected device.

1) Prerequisites
- Flutter SDK 3.7.0 or newer (the project targets Dart SDK ^3.7.0)
- A configured emulator (Android Studio) or a physical device with developer mode
- Dart/Flutter tools on PATH: flutter doctor should pass

2) Install dependencies
- From the ai_tutoring_app_frontend directory:
  - flutter pub get

3) Run the app
- Start an emulator or connect a device
- flutter run
- Optionally, run tests:
  - flutter test

Assets and .env
- The pubspec.yaml includes .env and assets/. The app does not require specific environment variables to run the preview. If you add variables, ensure .env is present at the project root (next to pubspec.yaml).

## App Structure
The codebase follows a clear separation of screens, widgets, state providers, data samples, routing, and theme tokens.

- lib/main.dart
  - App entrypoint. Applies the Ocean Professional theme and registers named routes via AppRouter.

- lib/router/app_router.dart
  - Centralized routing with named routes:
    - / (home), /scan, /topics, /steps, /chat, /docs, /codegen
  - onGenerateRoute validates typed arguments for StepsScreen.
  - NotFoundScreen for deep-link fallbacks.

- lib/shell/app_shell.dart
  - The main bottom navigation shell for primary sections.

- lib/screens/
  - chat/chat_screen.dart: AI chat interface using local sample messages.
  - codegen/codegen_screen.dart: Code generator interface using sample outputs.
  - docs/docs_screen.dart: Document manager UI using sample documents.
  - home/home_screen.dart: Dashboard entry with cards and navigation.
  - scan/scan_screen.dart: Scan/import problem flow (stubbed camera, UI flows present).
  - steps/steps_screen.dart: Step-by-step solution viewer fed by sample_problem_steps.dart.
  - topics/topics_screen.dart: Topic browser using sample topics and recent topics.

- lib/widgets/
  - Common UI components used across screens:
    - nav/ocean_bottom_nav.dart: Bottom navigation.
    - chat/message_bubble.dart, chat/suggestion_chips.dart
    - docs/document_card.dart
    - code/code_output_card.dart
    - steps/step_item.dart, steps/sticky_cta_bar.dart
    - cards/continue_learning_card.dart, cards/course_card.dart
    - tiles/topic_tile.dart
    - chips/filter_chip_row.dart
    - common/avatar_square.dart, chip_filters.dart, pill_text_field.dart, primary_button.dart, section_header.dart

- lib/state/
  - Provider-based app state for each feature area:
    - chat_provider.dart, codegen_provider.dart, docs_provider.dart, recent_topics_provider.dart, steps_provider.dart

- lib/data/
  - Sample data sources used for the UI preview:
    - sample_courses.dart, sample_documents.dart, sample_messages.dart,
      sample_problem_steps.dart, sample_topics.dart

- lib/theme/
  - Ocean Professional theme token definitions and ThemeData:
    - app_colors.dart: Brand tokens, neutrals, text colors, dividers, and Material 3 ColorScheme builder.
    - app_typography.dart: Text theme configuration (weights, sizes, semantic roles).
    - app_theme.dart: Material ThemeData wiring using AppColors and AppTypography with component themes for AppBar, Inputs, Buttons, Chips, Cards.

- lib/utils/snack.dart
  - Snack helpers for consistent toasts and inline notifications.

## Ocean Professional Theme
The app uses a modern Ocean Professional design:
- Base Primary: #2563EB (Blue 600)
- Accent/Secondary/Success: #F59E0B (Amber 500)
- Error: #EF4444
- Background/Surface: #F9FAFB canvas, #FFFFFF surface
- Text Primary: #111827 with secondary/tertiary variants

Where to adjust tokens
- Colors and Material 3 scheme:
  - lib/theme/app_colors.dart
  - Update brand colors, neutrals, and the colorScheme builder for both light and dark (light is the default).
- Typography:
  - lib/theme/app_typography.dart
  - Adjust text styles and weights across headings, titles, labels, and body text.
- Component theming and defaults:
  - lib/theme/app_theme.dart
  - Central ThemeData that sets AppBarTheme, InputDecorationTheme, Button themes, Chip theme, Card theme, Divider theme, etc.

Recommended approach for theme tweaks
- Prefer changing tokens in AppColors and AppTypography to keep consistency.
- Use AppTheme.ocean to propagate updates across the app without editing individual screens.

## Implemented Screens and Primary Interactions
- Home
  - Displays entry points to Topics, Chat, Docs, and Codegen.
  - Cards and sections follow Ocean theme spacing and rounded corners.

- Topics
  - Browse topics via tiles and filters.
  - Uses recent topics state for quick recall.

- Chat (AI Tutor)
  - Shows a list of sample messages in message bubbles.
  - Provides suggestion chips to trigger canned prompts.
  - Input field wired to provider for local-only interactions.

- Scan
  - UI for scanning or importing a problem.
  - Camera integration is stubbed; use navigation to proceed to Steps with sample payloads.

- Steps
  - Displays a structured, step-by-step solution view of a problem.
  - Supports navigating from Scan or deep links via AppRouter with typed arguments.

- Docs
  - Document manager UI that lists sample documents.
  - Document tiles/cards with quick actions (stubbed hooks to future backend).

- Codegen
  - UI to generate code from study context and chat history.
  - Displays sample generated code output using a specialized card component.

## Stubbed and Planned Functionality
The UI preview is fully navigable, but several integrations are intentionally stubbed to enable fast iteration:

- Camera integration (Scan screen)
  - Current state: UI only, no camera permission or capture pipeline.
  - Planned: Integrate camera or file picker plugin, parse image/PDF content, and feed the Steps pipeline.

- AI Chat backend
  - Current state: Uses sample_messages.dart with provider to simulate interactions.
  - Planned: Connect to backend APIs for real-time AI responses, streaming, and tool calling.

- Code generation engine
  - Current state: Sample outputs in the Codegen screen.
  - Planned: Backend-powered codegen based on user prompt context and selected documents.

- Document storage and sync
  - Current state: Sample documents only.
  - Planned: Backend APIs for upload, sync, search, and per-document context extraction.

- Persistent storage
  - Current state: Providers hold session data; shared_preferences and sqflite are available in dependencies for future work.
  - Planned: Persist chats, topics, and document metadata for continuity across sessions.

## Routing and Deep Links
- Named routes (see lib/router/app_router.dart):
  - /, /scan, /topics, /steps, /chat, /docs, /codegen
- Steps route validates arguments through ProblemPayload.fromDynamic for safer deep links.
- Unknown routes display NotFoundScreen with a “Back to Home” action.

## Contributing
We welcome incremental contributions that keep the app cohesive and consistent with the Ocean Professional theme.

- Branching
  - Create a feature branch per change. Keep PRs focused and small.

- Code style
  - Follow Flutter lints (see analysis_options.yaml).
  - Run formatters before committing:
    - dart format .
    - flutter analyze

- UI consistency
  - Use components from lib/widgets and theme tokens from lib/theme to maintain consistency.
  - Avoid hardcoded colors and text styles; prefer Theme.of(context) and token access.

- State management
  - Use provider for screen state. Keep business logic in providers, not in widgets.

- Adding new screens
  - Place new pages under lib/screens/<feature>.
  - Hook into lib/router/app_router.dart with a named route and, if needed, typed arguments.
  - Reuse existing widgets and patterns for layout and spacing.

- Testing
  - Add or extend widget tests in test/.
  - Run flutter test before submitting a PR.

## Troubleshooting
- Flutter SDK version
  - If your Flutter is older than 3.7.0, upgrade to ensure compatibility with Dart 3.7 and Material 3 APIs.

- Assets not loading
  - Ensure assets/ is present and listed in pubspec.yaml under flutter: assets:.

- Route not found
  - Unknown routes will land on NotFoundScreen; verify route names in AppRoutes.

## License
This repository is intended for internal development and demonstration. Add a license file if you plan to distribute.

