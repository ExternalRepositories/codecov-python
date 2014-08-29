upload:
	git tag -a v$(shell python -c "import codecov;print codecov.version;") -m ""
	git push origin v$(shell python -c "import codecov;print codecov.version;")
	python setup.py sdist upload

reinstall:
	pip uninstall -y codecov
	python setup.py install