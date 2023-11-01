postgres:
	docker run --name postgres12 -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root Go_Bank

dropdb:
	docker exec -it postgres12 dropdb Go_Bank

.PHONY: postgres createdb dropdb