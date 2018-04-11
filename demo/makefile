RPI_LIB = httprequest

AR              = arm-linux-gnueabi-ar
CXX             = arm-linux-gnueabi-g++
#CXX             = g++
STRIP           = arm-linux-gnueabi-strip

CXXFLAGS = -Wall -O3 -g -I..
LDFLAGS = -L.. -static-libgcc -static-libstdc++
#LDFLAGS = -static -static-libgcc -static-libstdc++
LIBS = -l$(RPI_LIB)
TARGET = httpdemo

SRCS = Demo.cpp
OBJS = $(SRCS:.cpp=.o)


all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $(TARGET) $(OBJS) $(LDFLAGS) $(LIBS)

clean:
	rm -f $(OBJS) $(TARGET)
