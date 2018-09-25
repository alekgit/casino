.DEFAULT_GOAL := build-run

build:
	./mvnw clean package

run:
	java -jar ./target/casino2-1.0-snapshot-jar-with-dependencies.jar

build-run: build run

update:
	./mvnw versions:display-plugin-updates && ./mvnw versions:update-properties
