all:

include supermake/python-sandbox.mk


run:
	python server.py


run-jasmin-crasher:
	$(SANDBOX) python jasminsms_crasher.py
