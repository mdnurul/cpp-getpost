
AR              = arm-linux-gnueabi-ar
CXX             = arm-linux-gnueabi-g++
#CXX             = g++
STRIP           = arm-linux-gnueabi-strip

LDFLAGS = -static -static-libgcc -static-libstdc++
CXXFLAGS = -fPIC -Wall -O3 -g
TARGET_LIB = libhttprequest.a

SRCS = HttpRequest.cpp HttpResponse.cpp HttpException.cpp
OBJS = $(SRCS:.cpp=.o)


all: $(TARGET_LIB)

$(TARGET_LIB): $(OBJS)
	ar -rs $@ $^

$(SRCS:.cpp=.d):%.d:%.cpp
	$(CXX) $(CXXFLAGS) -MM $< >$@@

clean:
	rm -f $(OBJS) $(TARGET_LIB) $(SRCS:.cpp=.d)
