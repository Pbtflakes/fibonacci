CC = gfortran
CFLAGS = -g -Wall
TARGET = main

all: $(TARGET)

$(TARGET): $(TARGET).f95
	$(CC) $(CFLAGS) $(TARGET).f95 -o $(TARGET)
