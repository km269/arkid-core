VERSION ?= 1.0.`date +%Y%m%d`

all: docker

requirements:
	pipenv run pipenv_to_requirements -f

docker: docker-build docker-push

docker-build:
	docker build -t longguikeji/arkid:$(VERSION) .

docker-push:
	docker push longguikeji/arkid:$(VERSION)

sql-ldap-docker: sql-ldap-docker-build sql-ldap-docker-push

sql-ldap-docker-build:
	cd ldap/sql_backend/docker && \
	docker build -t longguikeji/ark-sql-ldap:$(VERSION) .

sql-ldap-docker-push:
	docker push longguikeji/ark-sql-ldap:$(VERSION)

native-ldap-docker-build:
	cd ldap/native_backend && \
	docker build -t longguikeji/ark-native-ldap:$(VERSION) .

native-ldap-docker-push:
	docker push longguikeji/ark-native-ldap:$(VERSION)

test:
	pipenv run python manage.py test siteapi.v1.tests --settings=oneid.settings_test