
programname = NULL
programexe  = NULL

compile: $(programname)
	$(CC) -o $(programname) $(programexe) -lm -lpthread

install: include/easyaudio.h
	echo "Installing in your system"
	cp -r include/ easyaudio/
	sudo mv easyaudio /usr/include/
	echo "Done"
