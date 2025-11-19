# Makefile

# Default python command
PYTHON ?= python
PIP ?= $(PYTHON) -m pip
VENV ?= venv

# default
.DEFAULT_GOAL := help

$(VENV)/bin/activate:
	$(PYTHON) -m venv $(VENV)

# target for nalu specific dependencies
nalu: $(VENV)/bin/activate
	$(VENV)/bin/pip install --upgrade pip
	$(VENV)/bin/pip install -r external/nalu/naluexamples-main/scripts/udp/requirements.txt
	$(venv)/bin/pip install -r external/nalu/naluesupport-main/requirements.txt

# help target
help:
	@printf "  nalu         Install nalu example requirements\n"
	@printf "  clean        Remove virtual environment\n"

clean:
	rm -rf $(VENV)