cxx = g++
cxxflags = -O2 -Iinclude

all:
	if [ -d "bin" ]; then rm -rf bin; fi
	mkdir bin

	$(cxx) $(cxxflags) -c src/main.cpp -o bin/main.o

	gcc -shared -o libstatic_modloader.so bin/*.o