CXX      := g++
CXXFLAGS := -Wall -Wextra -std=c++11
AR       := ar

LIB      := libcalculator.a
TARGET   := calc_app

all: $(TARGET)

$(TARGET): main.o $(LIB)
	$(CXX) $(CXXFLAGS) main.o -L. -lcalculator -o $@

$(LIB): calculator.o
	$(AR) rcs $@ $^

main.o: main.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o $@

calculator.o: calculator.cpp calculator.h
	$(CXX) $(CXXFLAGS) -c calculator.cpp -o $@

clean:
	rm -f *.o $(LIB) $(TARGET)

.PHONY: all clean
