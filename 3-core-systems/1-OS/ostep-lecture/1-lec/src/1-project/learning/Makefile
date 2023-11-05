APP_NAME = myApp
BUILD_DIR = ../../bin
C_FILES = ./test-putchar.c
C_FLAGS = -Wall -Werror

all: build run

build:
	clang $(C_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(CFLAGS)

run:
	$(BUILD_DIR)/$(APP_NAME)