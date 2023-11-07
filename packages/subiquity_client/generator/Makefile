types_py = ../subiquity/subiquity/common/types.py
types_dart = ../lib/src/types.dart

generate:
	python3 generator.py $(types_py) $(types_dart)
	dart format $(types_dart)

check:
	python3 -m unittest
