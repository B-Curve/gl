#include <GL/glew.h>
#include <GLFW/glfw3.h>
#include "device/display.h"
#include "render/Triangle.h"
#include "render/Texture.h"

void centerWindow(GLFWwindow *window);

int main() {
    Display display("Game", 800, 600);
    Triangle triangle;
    Texture texture("../assets/textures/wall.jpg");

    while (display.isOpen()) {
        display.clear();

        texture.bind(0);
        triangle.draw();

        display.poll_events();
    }

    return 0;
}
