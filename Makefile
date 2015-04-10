# Makefile
# Compilatie objecten (*.o) gaan naar ./obj/, binaries gaan naar ./bin/, library headers (*.hpp) gaan naar ./include/ en libraries (*.so) gaan naar ./lib/


CC=g++ -std=c++11
CC_FLAGS=-Wall
INCLUDE=-I./will-it-fly/build/include
LIBDIR=-L./will-it-fly/build/lib
LIBS=-lwif_core -lwif_algo -lwif_viz
EXECUTABLE=not-yet

all : wif demos
	echo "Building all"

demos :
	echo "Building demos"

wif : wif_core wif_algo wif_viz
	cd ./will-it-fly; make wif

wif_core : 
	cd ./wif-core; make wif_core

wif_algo : wif_core 
	cd ./wif-algo; make wif_algo

wif_viz : wif_core 
	cd ./wif-viz; make wif_viz

clean :
	echo "Cleaning build directory"
	rm -rf ./will-it-fly/build
