types_py = ../subiquity/subiquity/common/types/__init__.py \
	   ../subiquity/subiquity/common/types/storage.py
types_dart = ../lib/src/types.dart

generate:
	python3 generator.py $(types_py) --output $(types_dart)
	dart format $(types_dart)
	dart fix --apply $(types_dart)
	dart format $(types_dart)

check:
	python3 -m unittest
