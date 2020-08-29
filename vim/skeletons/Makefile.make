.DEFAULT_GOAL := debug

debug:
	echo >&2 "Compiling tabm ..."
	clang tabm.c -S -O3 -o target/debug/tabm
