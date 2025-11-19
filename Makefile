# Makefile

# Default python command
PYTHON ?= python
PIP ?= $(PYTHON) -m pip
VENV ?= venv

# default
.DEFAULT_GOAL := help

$(VENV)/bin/activate:
	$(PYTHON) -m venv $(VENV)

# Target to install python dependencies for the repository
repo-deps: $(VENV)/bin/activate
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r requirements.txt

# target for nalu specific dependencies
nalu: $(VENV)/bin/activate
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r external/nalu/naluexamples-main/scripts/udp/requirements.txt

# help target
help:
	@printf "  repo-deps    install requirements.txt\n"
	@printf "  nalu         Install nalu example requirements\n"
	@printf "  clean        Remove virtual environment\n"

clean:
	rm -rf $(VENV)