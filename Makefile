.PHONY: setup

.PHONY: build-runner
build-runner:
	fvm flutter packages pub run build_runner build --delete-conflicting-outputs


.PHONY: run-debug-dev
run-debug-dev:
	flutter run --debug --flavor development --dart-define=FLAVOR=development

.PHONY: run-release-dev
run-release-dev:
	flutter run --release --flavor development --dart-define=FLAVOR=development

.PHONY: run-release-stg
run-release-stg:
	flutter run --release --flavor staging --dart-define=FLAVOR=staging

.PHONY: run-release-prd
run-release-prd:
	flutter run --release --flavor production --dart-define=FLAVOR=production