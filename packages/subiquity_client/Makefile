.PHONY: generate
generate: lib/src/types.dart
	dart run build_runner build --delete-conflicting-outputs

lib/src/types.dart: subiquity
	$(MAKE) -C generator generate

.PHONY: check
check:
	$(MAKE) -C generator check
