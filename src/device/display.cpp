//
// Created by Brandon on 9/5/2020.
//
#include "display.h"

void centerWindow(GLFWwindow *window);
void framebuffer_size_callback(GLFWwindow* window, int width, int height);

Display::Display(const char *title, uint32_t width, uint32_t height) {
    if (!glfwInit()) {
        throw std::runtime_error("Failed to initialize glfw!");
    }

    glfwWindowHint(GLFW_SAMPLES, 4); // 4x antialiasing
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4); // We want OpenGL 3.3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE); // To make MacOS happy; should not be needed
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); // We don't want the old OpenGL

    window = glfwCreateWindow(width, height, title, nullptr, nullptr);


    if (window == nullptr) {
        glfwTerminate();
        throw std::runtime_error("Failed to create window.");
    }

    glfwMakeContextCurrent(window);
    centerWindow(window);

    glewExperimental = true;
    if (glewInit() != GLEW_OK) {
        throw std::runtime_error("Failed to initialize GLEW.");
    }

    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
}

void Display::clear() {
    glClearColor(0.2f, 0.2f, 0.2f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);
}

void Display::poll_events() {
    processInput();

    glfwSwapBuffers(window);
    glfwPollEvents();
}

void Display::processInput() {
    if(glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS || glfwWindowShouldClose(window)) {
        open = false;
    }
}

void framebuffer_size_callback(GLFWwindow* window, int width, int height) {
    glViewport(0, 0, width, height);
}

void centerWindow(GLFWwindow *window) {
    GLFWmonitor *monitor = glfwGetPrimaryMonitor();

    if (!monitor) return;

    const GLFWvidmode *mode = glfwGetVideoMode(monitor);

    if (!mode) return;

    int monitorX, monitorY;
    glfwGetMonitorPos(monitor, &monitorX, &monitorY);

    int windowWidth, windowHeight;
    glfwGetWindowSize(window, &windowWidth, &windowHeight);

    glfwSetWindowPos(window,
                     monitorX + (mode->width - windowWidth) / 2,
                     monitorY + (mode->height - windowHeight) / 2);
}
