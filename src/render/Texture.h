//
// Created by Brandon on 9/6/2020.
//

#ifndef GLTEST_TEXTURE_H
#define GLTEST_TEXTURE_H

#include <GL/glew.h>
#include <string>
#define STB_IMAGE_IMPLEMENTATION
#include <stb_image.h>
#include <iostream>

class Texture {
public:
    Texture(const std::string &path);
    inline void bind(unsigned int slot) const {
        glActiveTexture(GL_TEXTURE0 + slot);
        glBindTexture(GL_TEXTURE_2D, tid);
    }
private:
    unsigned int tid;
};


#endif //GLTEST_TEXTURE_H
