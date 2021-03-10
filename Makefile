BISECT_DIR=$(shell ocamlfind query bisect)

.PHONY: clean build install uninstall default doc

default:
	@echo "available targets:"
	@echo "  build        compile sosa"
	@echo "  test         compile sosa_tests, a test suite"
	@echo "  coverage     compile sosa_test with instrumented bisect_ppx coverage"
	@echo "  cov_report   create a coverage report from the latest coverage run"
	@echo "  clean        remove build directory"
	@echo "  install      install via Dune"
	@echo "  uninstall    uninstall via Dune"
	@echo "  doc          create documentation"

build:
	dune build

test:
	dune runtest

coverage:
	dune runtest --instrument-with bisect_ppx

cov_report:
	bisect-ppx-report html

clean:
	dune clean

install:
  dune install

uninstall:
	dune uninstall

doc:
  dune build @doc

