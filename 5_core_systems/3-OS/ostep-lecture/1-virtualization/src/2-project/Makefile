# `` can be used for substituion in shell

APP_NAME = my-cat
BUILD_DIR = ../../bin
C_FILES = ./my-cat.c
C_FLAGS = -Wall -Werror

all: build run

build:
	clang $(C_FILES) -o $(BUILD_DIR)/$(APP_NAME) $(CFLAGS)

run:
	$(BUILD_DIR)/$(APP_NAME)