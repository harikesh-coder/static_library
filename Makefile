CXX = g++
CXXFLAG =  -g -std=c++11 -Wall -Iinclude
CXXDLIB = -Llib -lstatic 

Source = $(wildcard src/*.cpp) #source.cpp
Obj=$(Source:.cpp=.o)
target = myprogram
run:$(target)
	./$(target)
$(target):$(Obj)
	$(CXX) $(Obj) $(CXXDLIB) -o $@

%.o:%.cpp
	$(CXX) $(CXXFLAG) -c $< -o $@ 

clean:
	del *.o $(target)
