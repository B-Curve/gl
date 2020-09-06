//
// Created by Brandon on 9/5/2020.
//

#ifndef GLTEST_TRIANGLE_H
#define GLTEST_TRIANGLE_H

#include <GL/glew.h>
#include "Shader.h"

static const float vertices[] = {
        // first triangle
        0.5f,  -0.5f, 0.0f, 0.0f, 0.0f,  // top right
        -0.5f, -0.5f, 0.0f, 1.0f, 0.0f,  // bottom right
        0.0f,  0.5f, 0.0f, 0.5f, 1.0f,  // top left
};

static const float texCoords[] = {
        0.0f, 0.0f,
        1.0f, 0.0f,
        0.5f, 1.0f,
};

class Triangle {
public:
    Triangle() {
        unsigned int VBO, TBO;
        glGenVertexArrays(1, &vao);
        glBindVertexArray(vao);
        glGenBuffers(1, &VBO);
        glGenBuffers(1, &TBO);

        glBindBuffer(GL_ARRAY_BUFFER, VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)nullptr);
        glEnableVertexAttribArray(0);

        glVertexAttribPointer(1, 2, GL_FLOAT, GL_FALSE, 5 * sizeof(float), (void*)(3 * sizeof(float)));
        glEnableVertexAttribArray(1);

        glBindVertexArray(0);
    }

    inline void draw() const {
        shader.bind();
        shader.setFloat("r", 0.3);
        shader.setFloat("g", 0.7);
        shader.setFloat("b", 0.7);
        glBindVertexArray(vao);
        glDrawArrays(GL_TRIANGLES, 0, 3);
    }

private:
    unsigned int vao = 0;
    Shader shader = Shader::from_type(ShaderType::S_Triangle);
};


#endif //GLTEST_TRIANGLE_H
