CXX = g++
CXXFLAG = -std=c++11 -g -Wall 
LIB = libstatic.a
AR = ar rcs
TARGET = program
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

# Compile .c files into .o files
%.o: %.c
	$(CXX) $(CXXFLAG) -c $< -o $@   # tab before cxx

# Create static library
$(LIB): $(OBJ) 
	$(AR) $(LIB) $(OBJ)

# Build final executable
$(TARGET): $(OBJ) $(LIB)
	$(CXX) $(OBJ) $(LIB) -o $@

# Run the program
run: $(TARGET)
	./$(TARGET)

# Clean up object files and executables
clean:
	del *.o $(OBJ) $(TARGET) $(LIB)

