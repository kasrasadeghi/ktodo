run: build
	./ktodo

build: ktodo.cpp webview.h
	g++ --std=c++17 ktodo.cpp -DWEBVIEW_GTK=1 `pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0` -o ktodo

install: build
	cp ktodo /home/kasra/bin