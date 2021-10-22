ROOT_DIR = $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

SPHINXOPTS    ?=
SOURCEDIR     = .
BUILDDIR      = build

.PHONY: serve
serve:
	docker buildx build ./.docker -t "sphinx"
	docker run --rm -it -v "$(ROOT_DIR):/docs" -p "127.0.0.1:8000:8000" "sphinx" sphinx-autobuild "$(SOURCEDIR)" "$(BUILDDIR)" --host 0.0.0.0 -c '.docker/sphinx' $(SPHINXOPTS) $(O)

