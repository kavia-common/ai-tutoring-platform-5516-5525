# PUBLIC_INTERFACE
# Make targets to operate on the Flutter app from the repository root.

FLUTTER_APP_DIR ?= ai-tutoring-platform-5516-5525/ai_tutoring_app_frontend

.PHONY: help
help:
	@echo "Common targets:"
	@echo "  make deps     - flutter pub get"
	@echo "  make analyze  - flutter analyze"
	@echo "  make test     - flutter test (CI=true)"
	@echo "  make run      - flutter run"
	@echo "  make format   - dart format ."
	@echo "  make all      - deps + analyze + test"

.PHONY: deps
deps:
	cd $(FLUTTER_APP_DIR) && flutter pub get

.PHONY: analyze
analyze:
	cd $(FLUTTER_APP_DIR) && flutter analyze

.PHONY: test
test:
	cd $(FLUTTER_APP_DIR) && CI=true flutter test

.PHONY: run
run:
	cd $(FLUTTER_APP_DIR) && flutter run

.PHONY: format
format:
	cd $(FLUTTER_APP_DIR) && dart format .

.PHONY: all
all: deps analyze test
