![](https://github.com/Sherry65-code/easyaudio/blob/main/eAsyaudio%20with%20background.png?raw=true)
# EASYAUDIO
A C library that uses miniaudio and provides a easy User Interface like in Python for pygame.

- How to build ?
  - Simply type this in the terminal
  
    ```bash
    sudo make install
    ```

- Example Program
  ```c
  #include <stdio.h>
  #include <easyaudio/easyaudio.h>
  
  char ch;
  int isPlaying = 1;
  
  int main(int argc, char **argv) {
    play("never gonna give you up.mp3");
    while (1) {
      ch = getchar();
      if (ch == 'k') {
        if (isPlaying) {
          printf("Paused\n");
          pause();
          isPlaying = 0;
        }
        else {
           printf("Playing\n");
           resume();
           isPlaying = 1;
        }
      }
      else {
        stop();
      }
    }
    return 0;
  }
  ```

- To compile
  ```bash
  cc -o program program.c -lm
  ```
  
Thank you for supporting us.
Please give us a 🌟 

This project has been made possible by [miniaudio](https://github.com/mackron/miniaudio).
