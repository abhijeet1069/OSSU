APP_NAME = threads
BUILD_DIR = ./bin
C_FILES = ./src/threads.c
C_FLAGS = -Wall -Werror

all: build run

build:
	clang $(C_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(CFLAGS)

run:
	$(BUILD_DIR)/$(APP_NAME)