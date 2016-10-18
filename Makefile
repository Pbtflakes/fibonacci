CC = gfortran
CFLAGS = -g -Wall
TARGET = main
MODS = fibo.f95

all: $(TARGET)

$(TARGET): $(TARGET).f95
	$(CC) $(CFLAGS) -c $(MODS)
	$(CC) $(CFLAGS) $(TARGET).f95 -o $(TARGET)
