test:
	docker-compose run --rm tox

isort:
	isort -rc phonenumber_field

black:
	black --safe phonenumber_field

lint: isort black

lintcommit:
	git commit -m "🕶 format code" --author="Lint Bot <stefan+lint-bot@foulis.ch>"

