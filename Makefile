
# McKenzie Hughes (mhughe57@ut.utm.edu)
# MakeFile


CC = g++

# executable name
TARGET = employee

# compile with all errors and warnings
CFLAGS = -c -Wall -Wextra

SRC = main.cpp Employee.cpp Officer.cpp Supervisor.cpp
OBJ = main.o Employee.o Officer.o Supervisor.o

all: $(TARGET)
# Compile objects from their cpp

# Link Object Files to target and create binary target

$(TARGET):$(OBJ)
	$(CC) $(OBJ) -o $(TARGET)


main.o: main.cpp Employee.h Officer.h Supervisor.h
	$(CC) $(CFLAGS) main.cpp
Supervisor.o: Supervisor.cpp Supervisor.h Employee.h
	$(CC) $(CFLAGS)	Supervisor.cpp
Officer.o: Officer.cpp Officer.h Employee.h
	$(CC) $(CFLAGS) Officer.cpp
Employee.o: Employee.cpp Employee.h
	$(CC) $(CFLAGS) Employee.cpp

# Remove .o, backups and target
clean:
	rm -f $(OBJ) $(TARGET) *~
