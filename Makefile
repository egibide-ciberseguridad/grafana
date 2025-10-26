#!make

ifneq (,$(wildcard ./.env))
    include .env
    export
else
$(error No se encuentra el fichero .env)
endif

help: _header
	${info }
	@echo Opciones:
	@echo ---------------------------------
	@echo start
	@echo stop / stop-all
	@echo build
	@echo stats / logs
	@echo clean
	@echo ---------------------------------

_header:
	@echo -------
	@echo Grafana
	@echo -------

_urls: _header
	${info }
	@echo ----------------------------------
	@echo [Grafana] http://localhost:3000
	@echo [Prometheus] http://localhost:9090
	@echo ----------------------------------

_start:
	@docker compose up -d grafana

start: _header _start _urls

stop:
	@docker compose stop

stop-all:
	@docker stop $(shell docker ps -aq)

build:
	@docker compose build --pull

stats:
	@docker stats

logs:
	@docker compose logs grafana

clean:
	@docker compose down -v --remove-orphans
