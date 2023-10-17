C_FILE = association.c
APP_NAME = myApp

COMMON_DIR = 2-prog-structure/1-rep-info/
SRC_DIR = ./src/$(COMMON_DIR)
BUILD_DIR = ./bin/$(COMMON_DIR)

all: clean build run

#First make a build directory if not exists
build:
	mkdir -p $(BUILD_DIR)
	clang $(SRC_DIR)$(C_FILE) -o $(BUILD_DIR)$(APP_NAME)

run:
	$(BUILD_DIR)$(APP_NAME)

#force clean build
clean:
	rm -f -r bin/*