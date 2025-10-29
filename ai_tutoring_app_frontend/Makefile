# Monorepo top-level Makefile to run flutter tasks in the app package.

APP_DIR=ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

.PHONY: pubget analyze test run format

pubget:
	@cd $(APP_DIR) && flutter pub get

analyze:
	@cd $(APP_DIR) && flutter analyze

test:
	@cd $(APP_DIR) && flutter test

run:
	@cd $(APP_DIR) && flutter run

format:
	@cd $(APP_DIR) && dart format .
