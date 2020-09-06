//
// Created by Brandon on 9/5/2020.
//

#ifndef GLTEST_DISPLAY_H
#define GLTEST_DISPLAY_H

#include <cstdint>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include <stdexcept>

class Display {
public:
    Display(const char* title, uint32_t width, uint32_t height);

    void poll_events();
    void clear();

    inline bool isOpen() {
        return open;
    }
private:
    bool open;
    GLFWwindow *window;

    void processInput();
};

#endif //GLTEST_DISPLAY_H
